import os

def get_dir():
    SCRIPTS_DIR = os.path.dirname(__file__)
    PROJECT_DIR = os.path.dirname(SCRIPTS_DIR)
    DATA_DIR = os.path.join(PROJECT_DIR, 'data')
    QUERIES_DIR = os.path.join(PROJECT_DIR, 'queries')

    dir_dict = {
        'PROJECT' : PROJECT_DIR,
        'SCRIPS' : SCRIPTS_DIR,
        'DATA' : DATA_DIR,
        'QUERIES' : QUERIES_DIR 
    }

    return dir_dict

PROJECT = get_dir()['PROJECT']
SCRIPTS_DIR = get_dir()['SCRIPS']
DATA_DIR = get_dir()['DATA']
QUERIES_DIR = get_dir()['QUERIES']