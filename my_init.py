# -*- coding: utf-8 -*-
"""
Created on Thu Mar 31 12:14:35 2022

@author: Admin
"""

# #PROJECT LOCATION
# main_dir = r"C:\Users\Admin\Desktop\tmk_adm".replace('\\','/') + '/'
# db_dir = main_dir + "dbs/"
# dict_dir = main_dir + "dict/"
# input_file_dir = main_dir + "input_files/"
# uf_exports_dir = input_file_dir + "uf_exports/"
# uf_exports_temp_dir = uf_exports_dir + "temp/"


# # DB DEFs
# db_name = 'tmk_adm_db.sqlite'

# # DICTIONARIES DEFs
# dict_xlsx = 'initial_dict_defs.xlsx'

import configparser as cp


config = cp.ConfigParser()
config.read('config.ini')

sections = config.sections()
print("Current configuration:")
for section in sections:
    print(f"    Section:{section}: ")
    for name, value in config.items(section):
        print(f"        {name}: {value}")



#PROJECT LOCATION
db_dir = config['dir_struct']['db_dir']
db_name = config['sqlite']['db_name']

# DB DEFs
main_dir = config['dir_struct']['main_dir']
dict_dir = config['dir_struct']['dict_dir']
input_file_dir = config['dir_struct']['input_file_dir']
uf_exports_dir = config['dir_struct']['uf_exports_dir']
uf_exports_temp_dir = config['dir_struct']['uf_exports_temp_dir']

# # DICTIONARIES DEFs
dict_xlsx = config['dicts']['dict_xlsx']

print('\n' * 2)