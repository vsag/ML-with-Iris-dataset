# ML-with-Iris-dataset

So I started doing an ML course on coursera and to check what I've learnt so far I want to apply learning algorithms on the famous
Iris dataset.

About the dataset:

Each training example contains 4 features(SepalLength,SepalWidth,PetaLength,PetalWidth) all in cm.

Three Classes-Iris-setosa(Label-0),Iris-versicolor(Label-1),Iris-virginica(Label-2)

About the Files in Source_dir:

Main.m-This is the main file which loads the data and calls the function.

train.txt-The training set

test.txt-The testing set

cv.txt-The cross validation set

trainLogReg-Trains the three classifiers

learningCurve.m- Used to plot learning curves. For info about learningCurves refer [Video](https://www.coursera.org/learn/machine-learning/lecture/Kont7/learning-curves)

sigmoid.m-Caluculates the sigmoid function.

learningCurves.m:This is also used to plot learning curves by a different method and its sort of buggy so take that with a 
grain of salt.

costFunctionReg.m: This caluculates the gradients and the value of a cost at a particular theta and its used by fminunc().

helper_programs:
divisons.py to divide the data into respective files

Implemented Learning Algorithms:

So using sklearn I divided the total dataset into 96-training set examples 24-CV set examples and 30-testing samples. 

1) Logistic Regression:

Hypothesis:Thet0+Theta1*X1+Theta2*X2+Theta*X3+Theta*X3

After using fminunc(Function minimisation) to minimise the cost function, I applied the Theta values to plot the learning curves which looked like the figure below:

[This](https://github.com/vsag/ML-with-Iris-dataset/tree/master/LearningCurves/Learning_Curve_LogReg.png?raw=true "Optional Title")


As you can see the CV error remains costant after a certain-number of training examples and this suggests theres a bit of a bias and no matter how many more examples you get this might remain constant? So what can you do?  One promising avenue would be to fit a more complex hypothesis, this can be done by using neural networks or by increasing the number of features. This is the best logistic regression can do without using polynomial feature.

So on the data it has never seen before i.e cv,testset. It misclassifies 2 samples.So on a whole for an accuracy metric=(52/54)*100 which is around 96.4%

PCA:
It's really hard to visualise the 4D data so done I've done pca and initialy chose one pca and then chose two pc's. They can be found in the data visualisation folder.
