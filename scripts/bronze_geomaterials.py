import os
import dotenv
import json
import time

import numpy as np
import pandas as pd

import requests
import duckdb

# directories
#print(os.path.abspath('./'))
DATA_DIR = os.path.join(os.pardir, 'data')
QUERIES_DIR = os.path.join(os.pardir, 'queries')

# fixing pandas analyzer
duckdb.execute("SET GLOBAL pandas_analyze_sample = 100_000")

bronze_geomaterials = duckdb.read_csv(os.path.join(DATA_DIR, "raw_geomaterials.csv"), sample_size=-1)

# SCHEMA?
bronze_geomaterials.to_parquet(os.path.join(DATA_DIR, "bronze_geomaterials.parquet"))