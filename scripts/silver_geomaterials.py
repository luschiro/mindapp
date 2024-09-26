import os
import duckdb
from dirs import DATA_DIR
from dirs import QUERIES_DIR


def load_query():
    with open(os.path.join(QUERIES_DIR,'silver_geomaterials.sql')) as f:
        query = f.read()
        f.close()

    return query

def load_bronze():
    bronze_tb = duckdb.read_csv(os.path.join(DATA_DIR, 'bronze_geomaterials.csv'),sample_size=-1)
    return bronze_tb

def silver_ingestion(query:str):
    """
    """
    print('Starting silver ingestion!')
    silver_geomaterials = duckdb.sql(query)
    silver_geomaterials.write_csv(os.path.join(DATA_DIR,"silver_geomaterials.csv"),overwrite=True)
    print('Silver table created!')
    
    return silver_geomaterials

bronze_geomaterials = load_bronze()
query_silver = load_query()
silver_ingestion(query_silver).show(max_rows=100000)