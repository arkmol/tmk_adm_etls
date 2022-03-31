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
from my_functions import WhitespaceRemover
import my_init as myi



conn = s3.connect(myi.db_dir + myi.db_name)

df_dic_xls_marek_cols = pd.read_sql('SELECT * FROM dic_xls_marked_columns', conn)

conn.close()

xls_marked_columns = df_dic_xls_marek_cols['column_name'].tolist()
converters_dict = dict(df_dic_xls_marek_cols.values)
print(converters_dict)





uf_files_2_proc = []
uf_files_2_proc.append("Ecport_2022.03.23.xlsx")
print(uf_files_2_proc[0].rpartition('.')[0]+ ".feather")

starttm = time.time()
df_f1 = pd.read_excel(myi.uf_exports_dir +  uf_files_2_proc[0], sheet_name ='Raport', 
                      usecols = df_dic_xls_marek_cols['column_name'], dtype=converters_dict)
WhitespaceRemover(df_f1)
print("file processed")
endtm = time.time()
print("df1: " + str(timedelta(seconds=endtm - starttm)))
df_f1.to_feather(myi.uf_exports_temp_dir + uf_files_2_proc[0].rpartition('.')[0] + ".feather")

# q1 = """SELECT t1.* FROM df_f1 AS t1 where t1.campcd is not null and t1.TELEFON1 is not null;"""
q1 = """SELECT t1.* FROM df_f1 AS t1 
        inner join
            (SELECT campcd, TELEFON1, MAX(LastTryTime) as max_LastTryTime
             FROM df_f1
             GROUP BY campcd, TELEFON1
             ) AS t2
        ON t1.TELEFON1 = t2.TELEFON1
        AND t1.LastTryTime = t2.max_LastTryTime
        AND t1.campcd = t2.campcd;"""
df_f1_filtered = ps.sqldf(q1, locals())
stats = df_f1_filtered["campcd"].value_counts()


conn = s3.connect(myi.db_dir + myi.db_name)

starttm = time.time()
df_f1_filtered.to_sql('fct_calls', conn, if_exists='append', index=False, chunksize=10000)

    
endtm = time.time()
print("df1_to_sql: " + str(timedelta(seconds=endtm - starttm)))

conn.commit()
conn.close()