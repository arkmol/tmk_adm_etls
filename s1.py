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
from my_functions import WhitespaceRemover, PhoneNumberCleaner
import my_init as myi
from datetime import datetime


try:

    conn = s3.connect(myi.db_dir + myi.db_name)
    
    df_dic_all_xls_marked_cols = pd.read_sql('SELECT column_name, column_type FROM dic_xls_marked_columns', conn)
    df_dic_xls_marked_cols = pd.read_sql('SELECT column_name, column_type FROM dic_xls_marked_columns WHERE target_schema = 1', conn)
    df_fact_tbl_structure = pd.read_sql('SELECT * FROM fct_calls limit 0', conn)
    


    xls_marked_columns = df_dic_xls_marked_cols['column_name'].tolist()
    xls_all_marked_columns = df_dic_all_xls_marked_cols['column_name'].tolist()
    converters_dict = dict(df_dic_all_xls_marked_cols.values)
    # print(converters_dict)

    
    cur = conn.cursor()
    uf_files_2_proc = []
    new_files_2_proc = 0
    for file in os.listdir(myi.uf_exports_dir):
        if file.endswith(".xls") or file.endswith(".xlsx"):
            # print(os.path.join(file))
            cur.execute("SELECT fileName FROM log_hist WHERE fileName = '" + file + "';")
            processed_files = cur.fetchall()
            if not processed_files:
                    print ('file added to processing queue: ' + file)
                    uf_files_2_proc.append(file)
                    new_files_2_proc += 1
            # else:
            #         print ('file exist:' + file)
    cur.close()
    if new_files_2_proc == 0:
        print ('no new files to processed !!!')
        
    
    for index, i  in enumerate(uf_files_2_proc):
        print('\n' * 1)
        print('start processing file:' + uf_files_2_proc[index])
        starttm = time.time()
        #read all Excel columns
        df_f0_tmp = pd.read_excel(myi.uf_exports_dir +  uf_files_2_proc[index], sheet_name = None, 
                               dtype=converters_dict)
        k_list = list(df_f0_tmp.keys())
        # print(k_list[0])
        # print(df_f0_tmp[k_list[0]].head())
        df_f0 = df_f0_tmp[k_list[0]]
        if not 'TELEFON1' in df_f0.columns:
            df_f0.columns = df_f0.columns.str.replace('Phone', 'TELEFON')
        # aa=df_f0.dtypes
        # result = pd.concat([df_fact_tbl_structure, df_f0], axis=0, ignore_index=True)
        
        #compare columns between schema and currentprocessing file
        f0_temp = []
        processed_xls_cols = df_f0.columns
        dict_cols = pd.DataFrame(f0_temp, columns = xls_marked_columns).columns
        dict_not_processed = dict_cols.difference(processed_xls_cols).tolist()
        if len(dict_not_processed):
            print('    the file being processed does not contain all the columns of the pattern:')
            print("         ", dict_not_processed)
            print('\n' * 1)
        
        
        # fields_2_rename = ('Phone1','Phone2','Phone3','Phone4')
        # counter = 0
        # for i in fields_2_rename:
        #     counter += 1
        #     if i in df_f0.columns: 
        #         print(i,counter)
        #         df_f0_rename = df_f0.rename({i: 'TELEFON' + str(counter)}, axis = 1, inplace = True)

        
        #create main dataframe with data structure redy to load
        df_f1 = pd.DataFrame(df_f0, columns = xls_marked_columns)
        
        #clean dataframe fields
        WhitespaceRemover(df_f1)
        print("    WhitespaceRemover file processed: " + uf_files_2_proc[index])
        PhoneNumberCleaner(df_f1)
        print("    PhoneNumberCleaner file processed: " + uf_files_2_proc[index])
        endtm = time.time()
        print("    df1: " + str(timedelta(seconds = endtm - starttm)))

        
        

        #insert processed fileName into log table
        cur = conn.cursor()
        sqlite_insert_with_param = """INSERT INTO log_hist
                              ('fileName', 'loadDate') 
                              VALUES (?, ?);"""
    
        data_tuple = (uf_files_2_proc[index], datetime.now())
        cur.execute(sqlite_insert_with_param, data_tuple)
        conn.commit()
        last_inserted_log_id = cur.lastrowid
        cur.close()
        
        # df_q_log = pd.read_sql('SELECT max(id) as lastInsrtedId FROM log_hist', conn)
        # df_q_log = df_q_log.astype({'lastInsrtedId':'int'})
        # last_inserted_log_id = df_q_log.at[0,"lastInsrtedId"]
        # last_inserted_log_id.astype(numpy.int32)
        # q_log.loc[0].iat[1]
        alternative_campcd = uf_files_2_proc[index].split(' ', 2)[0]
        q1 = """
                SELECT t1.*, 
                       iif(t1.campcd is null, '""" + str(alternative_campcd) + """', campcd) as campcd_mod, """ + str(last_inserted_log_id) + """ as logId
                FROM df_f1 AS t1 
                WHERE 
                     t1.TELEFON1 is not null
                    AND LastTryTime is not null
            ;"""
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
        del df_f1_filtered['campcd']
        df_f1_filtered = df_f1_filtered.rename(columns = {"campcd_mod":"campcd"})
        stats = df_f1_filtered["campcd"].value_counts()
        
    
        #append data into db table
        starttm = time.time()
        df_f1_filtered.to_sql('fct_calls', conn, if_exists='append', index=False, chunksize=10000)
        endtm = time.time()
        print("    df1_to_sql: " + uf_files_2_proc[index] + " - " + str(timedelta(seconds=endtm - starttm))) 
        conn.commit()
        
        

        #update info about processed fileName into log table
        cur = conn.cursor()
        sqlite_update_query = """UPDATE log_hist SET insertedRows = ? WHERE id = ?;"""
        data = (len(df_f1_filtered), last_inserted_log_id)
        cur.execute(sqlite_update_query, data)
        conn.commit()
        cur.close()
        
        print('\n' * 1)
        print('Number of inserted rows:',len(df_f1_filtered))
        if len(df_f1_filtered) == 0:
            print("   Reason:")
            if len(pd.unique(df_f1['TELEFON1'])) == 1:
                print("      column: TELEFON1 is empty")
            if len(pd.unique(df_f1['LastTryTime'])) == 1:
                print("      column: LastTryTime is empty")
            

        
        
# Handle errors
except s3.Error as error:
    print('Error occured - ', error)
  
# Close DB Connection irrespective of success
# or failure
finally:   
    if conn:
        conn.close()