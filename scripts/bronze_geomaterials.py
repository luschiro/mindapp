import os
import duckdb
from dirs import DATA_DIR


# fixing pandas analyzer
duckdb.execute("SET GLOBAL pandas_analyze_sample = 100_000")


def bronze_ingestion():
    """creates bronze table"""
    print('Starting bronze ingestion!')
    # try:
    bronze_geomaterials = duckdb.read_parquet(os.path.join(DATA_DIR, "raw_geomaterials.parquet"))
    bronze_geomaterials.to_csv(os.path.join(DATA_DIR, "bronze_geomaterials.csv"))
    print('Bronze table created!')
    # except:
        # print('Error while creating bronze table!')

bronze_ingestion()