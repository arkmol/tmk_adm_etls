# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import sqlite3 as s3
import pandas as pd
import time
from datetime import timedelta
import pandasql as ps
import os
from my_functions import WhitespaceRemover
import my_init as myi
from datetime import datetime
# from itertools import cycle



conn = s3.connect(myi.db_dir + myi.db_name)

df_dic_xls_marked_cols = pd.read_sql('SELECT * FROM dic_xls_marked_columns', conn)
df_fact_tbl_structure = pd.read_sql('SELECT * FROM fct_calls limit 0', conn)

conn.close()

xls_marked_columns = df_dic_xls_marked_cols['column_name'].tolist()
converters_dict = dict(df_dic_xls_marked_cols.values)
# print(converters_dict)



conn = s3.connect(myi.db_dir + myi.db_name)

cur = conn.cursor()
uf_files_2_proc = []
for file in os.listdir(myi.uf_exports_dir):
    if file.endswith(".xls") or file.endswith(".xlsx"):
        # print(os.path.join(file))
        cur.execute("SELECT fileName FROM log_hist WHERE fileName = '" + file + "';")
        processed_files = cur.fetchall()
        if not processed_files:
                print ('not found and add to process: ' + file)
                uf_files_2_proc.append(file)
        else:
                print ('found: ' + file)
# uf_files_2_proc.append("Ecport_2022.03.23.xlsx")
# uf_files_2_proc.append("163 Land Rover_Kampania wsparciowa.xlsx")
cur.close()

for index, i  in enumerate(uf_files_2_proc):
    starttm = time.time()
    #read all Excel columns
    df_f0_tmp = pd.read_excel(myi.uf_exports_dir +  uf_files_2_proc[index], sheet_name = None, 
                           dtype=converters_dict)
    k_list = list(df_f0_tmp.keys())
    # print(k_list[0])
    # print(df_f0_tmp[k_list[0]].head())
    df_f0 = df_f0_tmp[k_list[0]]
    # aa=df_f0.dtypes
    # result = pd.concat([df_fact_tbl_structure, df_f0], axis=0, ignore_index=True)
    df_f1 = pd.DataFrame(df_f0, columns = xls_marked_columns)
    
    # df_f1 = pd.read_excel(myi.uf_exports_dir +  uf_files_2_proc[index], sheet_name = None, 
    #                       usecols = df_dic_xls_marked_cols['column_name'], dtype=converters_dict)
    WhitespaceRemover(df_f1)
    print("WhitespaceRemover file processed: " + uf_files_2_proc[index])
    endtm = time.time()
    print("df1: " + str(timedelta(seconds=endtm - starttm)))
    df_f1.to_feather(myi.uf_exports_temp_dir + uf_files_2_proc[index].rpartition('.')[0] + ".feather")
    
    q1 = """SELECT t1.* FROM df_f1 AS t1 where t1.campcd is not null and t1.TELEFON1 is not null;"""
    # q1 = """SELECT t1.* FROM df_f1 AS t1 
    #         inner join
    #             (SELECT campcd, TELEFON1, MAX(LastTryTime) as max_LastTryTime
    #               FROM df_f1
    #               GROUP BY campcd, TELEFON1
    #               ) AS t2
    #         ON t1.TELEFON1 = t2.TELEFON1
    #         AND t1.LastTryTime = t2.max_LastTryTime
    #         AND t1.campcd = t2.campcd
    #         WHERE t1.campcd is not null 
    #         AND t1.TELEFON1 is not null;"""
    df_f1_filtered = ps.sqldf(q1, locals())
    stats = df_f1_filtered["campcd"].value_counts()
    aa=df_f1_filtered.dtypes
    

    
    starttm = time.time()
    df_f1_filtered.to_sql('fct_calls', conn, if_exists='append', index=False, chunksize=10000)
    endtm = time.time()
    print("df1_to_sql: " + uf_files_2_proc[index] + " - " + str(timedelta(seconds=endtm - starttm)))
    conn.commit()
    
    #insert processed fileName into log table
    cur = conn.cursor()
    sqlite_insert_with_param = """INSERT INTO log_hist
                          ('fileName', 'loadDate') 
                          VALUES (?, ?);"""

    data_tuple = (uf_files_2_proc[index], datetime.now())
    cur.execute(sqlite_insert_with_param, data_tuple)
    conn.commit()
    cur.close()
    
    
conn.close()