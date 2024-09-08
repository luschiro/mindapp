import os

import numpy as np
import pandas as pd
import requests
import dotenv
import json

import duckdb

# setup
API_KEY = dotenv.get_key(".env", "api_min")

# API root entry point
MINDAT_API_URL = "https://api.mindat.org"

# authorization header that must be included with each request.
headers = {'Authorization': 'Token ' + API_KEY}

# directories
DATA_DIR = os.path.join(os.path.abspath('./'), 'data')
QUERIES_DIR = os.path.join(os.path.abspath('./'), 'queries')

# fixing pandas analyzer
duckdb.execute("SET GLOBAL pandas_analyze_sample = 100_000")

# making a request

endpoint = MINDAT_API_URL + "/geomaterials/"
df_all = pd.DataFrame()

for page in range(1,20):
  filter_dict = {
    'page': page,
    'page_size':1000
  }
  
  response = requests.get(endpoint,params=filter_dict,headers=headers)

  try:
    mineral_list = response.json()['results']
    print('page', page, response)

    # data frame handling
    df_page = pd.DataFrame.from_dict(mineral_list)
    df_all = pd.concat([df_all, df_page])

  except Exception as e:
    print('Error while requesting', 'page', page)

df_all.reset_index(inplace=True, drop=True)

# creating a duckdb object
df_duck = duckdb.from_df(df_all)
df_duck.write_csv(os.path.join(DATA_DIR, "bronze_geomaterials.csv"), overwrite=True)