%load the .csv file into octave
data=load("train.txt");
X=data(:,1:size(data,2)-1);
y=data(:,size(data,2));
%This gives us the dimensions of X
m=size(X,1);
n=size(X,2);
lambda=0;
%preparing the data for traning
X=[ones(size(X,1),1) X];
num_labels=3;
final_theta=trainLogReg(X,y,0,num_labels)

%loading CV set
CV_data=load("cv.txt");
X_cv=CV_data(:,1:size(CV_data,2)-1);
y_cv=CV_data(:,size(data,2));
X_cv=[ones(size(X_cv,1),1) X_cv];
[miss_classify,accuracy]=Prediction(X_cv,y_cv,final_theta)
%predictions

%[error_train,error_cv]=learningCurves(X,y,X_cv,y_cv,lambda);
[error_train,error_cv]=learningCurve(X,y,X_cv,y_cv,lambda);

CV_data=load("test.txt");
X_cv=CV_data(:,1:size(CV_data,2)-1);
y_cv=CV_data(:,size(data,2));
X_cv=[ones(size(X_cv,1),1) X_cv];
[miss_classify,miss_classify,accuracy]=Prediction(X_cv,y_cv,final_theta)