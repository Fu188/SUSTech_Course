import argparse
import json
import joblib

from sklearn.calibration import CalibratedClassifierCV
from sklearn.ensemble import VotingClassifier
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import SGDClassifier, RidgeClassifier, PassiveAggressiveClassifier
from sklearn.multiclass import OneVsRestClassifier
from sklearn.pipeline import Pipeline
from sklearn.svm import LinearSVC

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--train_data_filename', type=str, default='train.json')
    parser.add_argument('-i', '--test_data_filename', type=str, default='testdataexample')
    args = parser.parse_args()
    train_dataset = json.load(open(args.train_data_filename))
    test_x = json.load(open(args.test_data_filename))
    train_x = [item["data"] for item in train_dataset]
    train_y = [item["label"] for item in train_dataset]

    # define classifier model
    classifier1 = SGDClassifier(loss='modified_huber', alpha=1e-4, max_iter=10000)
    classifier2 = RidgeClassifier(alpha=1.1, max_iter=10000)
    classifier3 = CalibratedClassifierCV(LinearSVC(C=1.1, max_iter=10000))
    classifier4 = OneVsRestClassifier(LinearSVC(C=1.1, max_iter=10000))
    classifier5 = PassiveAggressiveClassifier(C=1.175, loss="hinge", max_iter=10000)

    classifier = Pipeline([
        ('tfidf', TfidfVectorizer(min_df=5, ngram_range=(1, 3), lowercase=False, sublinear_tf=True)),
        ('clf', VotingClassifier(estimators=[('clf1', classifier1),
                                             ('clf2', classifier2),
                                             ('clf3', classifier3),
                                             ('clf4', classifier4),
                                             ('clf5', classifier5)]))])

    model = classifier.fit(train_x, train_y)

    # predict labels
    predict_y = model.predict(test_x)

    # open a file and write
    f = open("output.txt", 'w')
    for label in predict_y:
        f.write(str(label) + "\n")