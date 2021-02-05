import argparse
import json

import joblib

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--test_data_filename', type=str, default='testdataexample')
    parser.add_argument('-m', '--model', type=str, default='model.model')
    args = parser.parse_args()
    test_x = json.load(open(args.test_data_filename))
    model = joblib.load(args.model)

    # predict labels
    predict_y = model.predict(test_x)

    # open a file and write
    f = open("output.txt", 'w')
    for label in predict_y:
        f.write(str(label)+"\n")
