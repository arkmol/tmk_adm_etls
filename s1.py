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
from my_functions import Whitespace_remover



main_dir = r"C:\Users\Admin\Desktop\tmk_adm".replace('\\','/') + '/'
db_dir = main_dir + "dbs/"
dict_dir = main_dir + "dict/"
input_file_dir = main_dir + "input_files/"
uf_exports_dir = input_file_dir + "uf_exports/"

db_name = 'tmk_adm_db.sqlite'

# DICTIONARIES DEFs
dict_xlsx = 'initial_dict_defs.xlsx'


df_xls_marked_columns = pd.read_excel(dict_dir + dict_xlsx, sheet_name='xls_marked_columns')
df_xls_marked_columns.name = 'df_xls_marked_columns'
# print(df_xls_marked_columns.name[3:])
Whitespace_remover(df_xls_marked_columns)
xls_marked_columns = df_xls_marked_columns['column_name'].tolist()
# df_xls_marked_columns.set_index("column_name", inplace=True)


df_phone_statuses = pd.read_excel(dict_dir + dict_xlsx, sheet_name='phone_statuses')
df_phone_statuses.name='df_phone_statuses'
Whitespace_remover(df_phone_statuses)

df_affinities_temp = pd.read_excel(dict_dir + dict_xlsx, sheet_name='affinities')
Whitespace_remover(df_affinities_temp)
df_affinities = df_affinities_temp.groupby(['Kategoria','Kod kategorii']).size().reset_index().rename(columns={0:'count'})
df_affinities = df_affinities.drop(["count"],axis=1)
# df_affinities.set_index('Kategoria')
df_affinities.name='df_affinities'

# lst_dict_df = [df_xls_marked_columns]
lst_dict_df = [df_xls_marked_columns, df_phone_statuses, df_affinities]
# alldfs = [var for var in dir() if isinstance(eval(var), pd.core.frame.DataFrame)]
# print(alldfs) # df1, df2

# load df dict into db
conn = s3.connect(db_dir + db_name)

for i in lst_dict_df:
    starttm = time.time()
    # print (i.name[3:])
    i.to_sql('dic_' + i.name[3:], conn, if_exists='append', index=False)
    endtm = time.time()
    print(i.name + "_to_sql: " + str(timedelta(seconds=endtm - starttm)))

conn.close()






uf_files_2_proc = []
uf_files_2_proc.append("Ecport_2022.03.23.xlsx")

starttm = time.time()
converters_dict = dict(df_xls_marked_columns.values)
print(converters_dict)
df_f1 = pd.read_excel(uf_exports_dir +  "Ecport_2022.03.23.xlsx", sheet_name='Raport', 
                      usecols = xls_marked_columns, dtype=converters_dict, nrows=100)
# Whitespace_remover(df_f1)
print("file processed")
endtm = time.time()
print("df1: " + str(timedelta(seconds=endtm - starttm)))

# df_f1 = df_f1.astype(converters_dict)
# print(df_f1.dtypes)

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
stats=df_f1_filtered["campcd"].value_counts()


conn = s3.connect(db_dir + db_name)

starttm = time.time()
df_f1_filtered.to_sql('f1', conn, if_exists='append', index=False)
endtm = time.time()
print("df1_to_sql: " + str(timedelta(seconds=endtm - starttm)))


conn.close()