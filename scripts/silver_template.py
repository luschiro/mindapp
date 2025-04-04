import os
import duckdb
from dirs import DATA_DIR, QUERIES_DIR

def load_etl(silver_table_query):
    """loads a query with query_name.sql from the QUERIES_DIR directory"""

    print("loading query")
    with open(os.path.join(QUERIES_DIR,f'{silver_table_query}.sql')) as f:
        query = f.read()
        f.close()
    print("query loaded\n")

    return query

def load_bronze(tb):
    print('--------------------\nloading bronze table..')
    df_bronze = duckdb.read_csv(os.path.join(DATA_DIR, f'{tb}.csv'),sample_size=-1).to_df()
    print('bronze table loaded!\n--------------------')
    
    return df_bronze

def silver_ingestion(bronze_tb_name):
  # """create new silver table """
  # print('Starting silver ingestion!')

  df_bronze = load_bronze(bronze_tb_name)
  conn = duckdb.connect()
  conn.register(bronze_tb_name, df_bronze)

  silver_tb_name = bronze_tb_name.replace('bronze_', 'silver_')
  
  silver_etl = load_etl(silver_tb_name).format(table=bronze_tb_name)
  
  silver_tb = conn.query(silver_etl)
  silver_tb.write_csv(os.path.join(DATA_DIR,f"{silver_tb_name}.csv"),overwrite=True)

  # print('Silver table created!')

  return silver_tb


# program
print('\n\n')
silver_ingestion('bronze_geomaterials')

