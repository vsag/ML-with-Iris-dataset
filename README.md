# ML-with-Iris-dataset

So I started doing an ML course on coursera and to check what I've learnt so far I want to apply learning algorithms on the famous
Iris dataset.

About the dataset:

Each training example contains 4 features(SepalLength,SepalWidth,PetaLength,PetalWidth) all in cm.
Three Classes-Iris-setosa(Label-0),Iris-versicolor(Label-1),Iris-virginica(Label-2)

Implemented Learning Algorithms:

So using sklearn I divided the total dataset into 96-training set examples 24-CV set examples and 30-testing samples. 

1) Logistic Regression:

Hypothesis:Thet0+Theta1*X1+Theta2*X2+Theta*X3+Theta*X3

After using fminunc(Function minimisation) to minimise the cost function, I applied the Theta values to test the hypotheis, two examples were
incorrectly classified, Then I went on to plot the learning curves which looked like the figure below:

![Alt text](/https://github.com/vsag/ML-with-Iris-dataset.git/master/ML-with-Iris-dataset/LearningCurves/Learning_Curve_LogReg.png?raw=true "Optional Title")
