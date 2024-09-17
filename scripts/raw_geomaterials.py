import os
import dotenv
import time

import requests
import json
import pandas as pd

# setup
API_KEY = dotenv.get_key(".env", "api_min")

# API root entry point
URL = "https://api.mindat.org"
endpoint = URL + "/geomaterials/"

# authorization header that must be included with each request.
headers = {'Authorization': 'Token ' + API_KEY}

# directories
DATA_DIR = os.path.join(os.path.abspath('./'), 'data')
QUERIES_DIR = os.path.join(os.path.abspath('./'), 'queries')


# making requests
df_all = pd.DataFrame() # df with raw data from all API pages

for page in range(1,60): # iterating over all pages
  filter_dict = {
    'page': page,
    'page_size':1000
  }
  
  # testin API response
  code = 0
  while (code != 200 and code != 404):
    time.sleep(1)
    print('Trying', endpoint, page)
    response = requests.get(endpoint,params=filter_dict,headers=headers,timeout=30)
    code = response.status_code
  
  try:
    mineral_list = response.json()['results']
    print('page', page, response)

    df_page = pd.DataFrame.from_dict(mineral_list)
    df_all = pd.concat([df_all, df_page])
  
  except Exception:
    print('Error while trying to create dataframe', 'page-', page)

# creating raw csv file
df_all.reset_index(inplace=True, drop=True)
df_all.to_csv(os.path.join(DATA_DIR, "raw_geomaterials.csv"))