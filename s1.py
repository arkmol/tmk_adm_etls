# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import sqlite3 as s3
import pandas as pd
import time
from datetime import timedelta

main_dir = r"C:\Users\Admin\Desktop\tmk_adm".replace('\\','/') + '/'
db_dir = main_dir + "dbs/"
dict_dir = main_dir + "dict/"
input_file_dir = main_dir + "input_files/"
uf_exports_dir = input_file_dir + "uf_exports/"

db_name = 'tmk_adm_db.sqlite'
dict_xls_marked_columns = 'xls_marked_columns.xlsx'


df_xls_marked_columns = pd.read_excel(dict_dir + dict_xls_marked_columns, sheet_name='xls_marked_columns')
xls_marked_columns = df_xls_marked_columns['column_name'].tolist()
df_xls_marked_columns.set_index("column_name", inplace=True)


uf_files_2_proc = []
uf_files_2_proc.append("Ecport_2022.03.23.xlsx")

starttm = time.time()
df_f1 = pd.read_excel(uf_exports_dir +  "Ecport_2022.03.23.xlsx", sheet_name='Raport', usecols=xls_marked_columns)
print("file processed")
endtm = time.time()
print("df1: " + str(timedelta(seconds=endtm - starttm)))






conn = s3.connect(db_dir + db_name)

starttm = time.time()
df_f1.to_sql('f1', conn, if_exists='append')
endtm = time.time()
print("df1_to_sql: " + str(timedelta(seconds=endtm - starttm)))




df_xls_marked_columns.to_sql('dict_xls_marked_columns', conn, if_exists='replace')
# with con:
#     cur = con.cursor()    
#     cur.execute("CREATE TABLE Population(id INTEGER PRIMARY KEY, country TEXT, population INT)")
#     cur.execute("INSERT INTO Population VALUES(NULL,'Germany',81197537)")
#     cur.execute("INSERT INTO Population VALUES(NULL,'France', 66415161)")
#     cur.execute("INSERT INTO Population VALUES(NULL,'Spain', 46439864)")
#     cur.execute("INSERT INTO Population VALUES(NULL,'Italy', 60795612)")
#     cur.execute("INSERT INTO Population VALUES(NULL,'Spain', 46439864)")


query = "SELECT * FROM Population WHERE population > 50000000;"

df = pd.read_sql_query(query,conn)

conn.close()