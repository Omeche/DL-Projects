import sklearn
import json
import pickle
import numpy as np
import os

print("sklearn version:", sklearn.__version__)

__model = None
__data_columns = None
__locations = None

def get_location_names():
    return __locations

def get_estimated_price(location, sqft, bedroom, bath):
    try:
        loc_index = -1
        for i, col in enumerate(__data_columns):
            if col.lower() == location.lower():
                loc_index = i
                break
    except Exception:
        loc_index = -1

    x = np.zeros(len(__data_columns))
    x[0] = sqft
    x[1] = bath
    x[2] = bedroom
    if loc_index >= 0:
        x[loc_index] = 1

    return round(__model.predict([x])[0], 2)

def load_saved_artifacts():
    print('loading saved artifacts...start')
    global __data_columns, __locations, __model

    base_dir = os.path.dirname(__file__)
    column_path = os.path.join(base_dir, 'artifacts', 'columns.json')
    model_path = os.path.join(base_dir, 'artifacts', 'bangalore house price.pickle_model')

    with open(column_path, 'r') as f:
        __data_columns = json.load(f)['data_columns']
        __locations = __data_columns[3:]

    with open(model_path, 'rb') as f:
        __model = pickle.load(f)

    print('loading saved artifacts...done')

if __name__ == '__main__':
    load_saved_artifacts()
    print(get_estimated_price('1st block jayanagar', 1200, 3, 2))
    print(get_estimated_price('1st block jayanagar', 1500, 4, 3))
    print(get_estimated_price('5th phase jp nagar', 2000, 2, 4))
    print(get_estimated_price('5th phase jp nagar', 1600, 5, 3))
    print(get_location_names())
