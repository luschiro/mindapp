import os
import duckdb

# directories
DATA_DIR = os.path.join(os.path.abspath('./'), 'data')
QUERIES_DIR = os.path.join(os.path.abspath('./'), 'queries')

# fixing pandas analyzer
duckdb.execute("SET GLOBAL pandas_analyze_sample = 100_000")


def bronze_ingestion():
  """ creates the 

  """
  print('Starting bronze ingestion!')
  try:
    bronze_geomaterials = duckdb.read_csv(os.path.join(DATA_DIR, "raw_geomaterials.csv"), sample_size=-1)
    # SCHEMA?
    bronze_geomaterials.to_parquet(os.path.join(DATA_DIR, "bronze_geomaterials.parquet"))
    print('Bronze table created!')
  except:
    print('Error while creating bronze table!')

def main():
  bronze_ingestion()

if __name__ == '__main__':
    main()