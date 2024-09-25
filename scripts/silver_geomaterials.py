import os
import duckdb

# directories
DATA_DIR = os.path.join(os.path.abspath('./'), 'data')
QUERIES_DIR = os.path.join(os.path.abspath('./'), 'queries')

def load_silver():
    with open(os.path.join(QUERIES_DIR,'silver_geomaterials.sql')) as f:
        query = f.read()
        f.close()

    silver_geomaterials = duckdb.sql(query)
    silver_geomaterials.write_parquet(
        os.path.join(DATA_DIR, "silver_geomaterials.parquet"), 
        overwrite=True)

load_silver()