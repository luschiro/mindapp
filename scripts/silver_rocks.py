import os
import duckdb
from dirs import DATA_DIR
from dirs import QUERIES_DIR

def load_query(query_name):
    # loads a query with query_name.sql
    with open(os.path.join(QUERIES_DIR,f'{query_name}.sql')) as f:
        query = f.read()
        f.close()
        print('\n\nQUERY LOADED\n--------\n',query[:100], '\n--------')
    return query

def load_silver():
    silver_tb = duckdb.read_csv(os.path.join(DATA_DIR, 'silver_geomaterials.csv'),sample_size=-1)
    return silver_tb

def rock_ingestion(query:str):
    silver_rocks = duckdb.sql(query)    
    return silver_rocks

silver_geomaterials = load_silver()
query_rock = load_query('silver_rocks')


test = rock_ingestion(query_rock).to_df()

print(test)