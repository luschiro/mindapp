import numpy as np
import pandas as pd
import requests
import dotenv

import os

# setup
API_KEY = dotenv.get_key(".env", "api_min")
print(API_KEY)


# API root entry point
MINDAT_API_URL = "https://api.mindat.org"

# authorization header that must be included with each request.
headers = {'Authorization': 'Token ' + API_KEY}


# making a request
filter_dict = {
    'id':2,
}
params = filter_dict
end_point = "/geomaterials/"

# use python requests package to GET results from mindat
response = requests.get(MINDAT_API_URL+end_point,params=params,headers=headers).json()
# assume the query succeeds. See later examples for using the response.status_code
#  to check if the request worked.

#  another handy requests package function to cast the results to JSON.


a = pd.DataFrame(response)
print(a.head(10))
