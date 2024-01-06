import pandas as pd
import numpy as np
from scipy import stats


sheet_name_array = ['EXP1', 'EXP2', 'os1', 'os2', 'os3', 'VMres1', 'VMres2', 'VMres3']

xlsx = pd.ExcelFile('Homework_regressione.xlsx')


for i in range(0,len(sheet_name_array)):
    df = pd.read_excel(xlsx, sheet_name=sheet_name_array[i])
    x = df.iloc[:,0].tolist()
    for k in range(1, df.shape[1]):
        y = df.iloc[:,k].tolist()
        tau, p_value = stats.kendalltau(x=x,y=y)
        if(p_value < 0.05):
            slope, intercept, _ , _ = stats.theilslopes(x=x,y=y)
            print(f'datasheet name: {sheet_name_array[i]}')
            print(f'tau: {tau}')
            print(f'p_value: {p_value}')
            print(f'slope: {slope}')
            print(f'intercept: {intercept} \n')
        else:
            print(f'datasheet name: {sheet_name_array[i]}')
            print(f'tau: {tau}')
            print(f'p_value: {p_value} \n')
