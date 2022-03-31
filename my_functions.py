# -*- coding: utf-8 -*-
"""
Created on Mon Mar 28 16:19:13 2022

@author: Admin
"""


def WhitespaceRemover(dataframe):
    # iterating over the columns
    for i in dataframe.columns:
        # checking datatype of each columns
        if dataframe[i].dtype == 'object':
            # applying strip function on column
            dataframe[i] = dataframe[i].map(str.strip)
            # dataframe[i] = dataframe[i].map(str.capitalize)
        else:
            # if condn. is False then it will do nothing.
            pass
