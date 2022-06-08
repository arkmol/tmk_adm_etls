# -*- coding: utf-8 -*-
"""
Created on Thu Mar 31 12:26:52 2022

@author: Admin
"""
import sqlite3 as s3
import pandas as pd
import time
from datetime import timedelta
import my_init_e as myi
from my_functions import WhitespaceRemover

df_xls_marked_columns = pd.read_excel(myi.dict_dir + myi.dict_xlsx, sheet_name='xls_marked_columns')
df_xls_marked_columns.name = 'df_xls_marked_columns'
# print(df_xls_marked_columns.name[3:])
WhitespaceRemover(df_xls_marked_columns)
xls_marked_columns = df_xls_marked_columns['column_name'].tolist()
# df_xls_marked_columns.set_index("column_name", inplace=True)


df_phone_statuses = pd.read_excel(myi.dict_dir + myi.dict_xlsx, sheet_name='phone_statuses')
df_phone_statuses.name='df_phone_statuses'
WhitespaceRemover(df_phone_statuses)

df_affinities_temp = pd.read_excel(myi.dict_dir + myi.dict_xlsx, sheet_name='affinities')
WhitespaceRemover(df_affinities_temp)
df_affinities = df_affinities_temp.groupby(['Kategoria','Kod kategorii']).size().reset_index().rename(columns={0:'count'})
df_affinities = df_affinities.drop(["count"],axis=1)
# df_affinities.set_index('Kategoria')
df_affinities.name='df_affinities'

# lst_dict_df = [df_xls_marked_columns]
lst_dict_df = [df_xls_marked_columns, df_phone_statuses, df_affinities]
# alldfs = [var for var in dir() if isinstance(eval(var), pd.core.frame.DataFrame)]
# print(alldfs) # df1, df2

# load df dict into db
conn = s3.connect(myi.db_dir + myi.db_name)

for i in lst_dict_df:
    starttm = time.time()
    # print (i.name[3:])
    i.to_sql('dic_' + i.name[3:], conn, if_exists='append', index=False)
    endtm = time.time()
    print(i.name + "_to_sql: " + str(timedelta(seconds=endtm - starttm)))

conn.close()