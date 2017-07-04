import sklearn as sk
import numpy as np
from sklearn import datasets
from sklearn.model_selection import train_test_split
def writeto(X_train,y_train,fp):
    for values in range(len(y_train)):
        if y_train[values]==0:
            for value in X_train[values]:
                print(value,file=fp,end=",")
            print(0,file=fp)
        elif y_train[values]==1:
            for value in X_train[values]:
                print(value,file=fp,end=",")
            print(1,file=fp)
        else:
            for value in X_train[values]:
                print(value,file=fp,end=",")
            print(2,file=fp)

input_file="bezdekIrisdata.txt"
iris=datasets.load_iris()
X_train, X_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.2, random_state=0)
X_train,X_CV,y_train,y_CV=train_test_split(X_train,y_train, test_size=0.2, random_state=0)

(fp_train,fp_test,fp_CV)=(open("train.txt","w"),open("test.txt","w"),open("cv.txt","w"))
writeto(X_train,y_train,fp_train)
writeto(X_test,y_test,fp_test)
writeto(X_CV,y_CV,fp_CV)
