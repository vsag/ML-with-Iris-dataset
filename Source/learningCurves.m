function [train_error,train_cv] = learningCurves(X,y,X_cv,y_cv,lambda)

values=2;
step=1;
train_size=size(X,1);
feature_size=size(X,2);
cv_size=size(X_cv,1);
loop=0;
num_labels=3;
train_error=zeros(6,1);
train_cv=zeros(6,1);
update_error=1;
final_theta=zeros(num_labels,feature_size);
temp_val=2;
while temp_val<=train_size,
  loop=0;
  temp_val=values^step;
  step+=1
  average_train_val=0;
  average_cv_val=0;
  while loop<=50
    %initial_theta=zeros(size(X,2),1);
    if temp_val<=size(X,1)
      sel=randperm(train_size,temp_val);
      rand_train_sample=zeros(temp_val,feature_size);
      y_train_rand=zeros(size(sel,2),1);
       i=1;
      while i<=size(sel,2),
        rand_train_sample(i,:)=X(sel(i),:);
        y_train_rand(i)=y(sel(i));
        i+=1;
      end
      if temp_val<=cv_size,
        sel_cv=randperm(cv_size,temp_val);
        rand_cv_sample=zeros(temp_val,feature_size);
        y_cv_sample=zeros(temp_val,1);
        j=1;
        while j<=length(sel_cv),
          rand_cv_sample(j,:)=X_cv(sel_cv(j),:);
          y_cv_sample(j)=y_cv(sel_cv(j));
          j+=1
        end
    
      else,
      rand_cv_sample=X_cv;
      y_cv_sample=y_cv;
      endif
      final_theta=trainLogReg(rand_train_sample,y_train_rand,lambda,num_labels);
      [temp_err_train,accracy]=Prediction(rand_train_sample,y_train_rand,final_theta);
      [temp_err_cv,accuracy]=Prediction(rand_cv_sample,y_cv_sample,final_theta);
      average_cv_val=average_cv_val+temp_err_cv;
      average_train_val=average_train_val+temp_err_train;
       loop+=1;
   else,
    break
   endif
  end
  
    train_error(update_error)=(average_train_val)/(loop-1);
    train_cv(update_error)=(average_cv_val)/(loop-1);
    update_error+=1;
    
end
 
train_error,train_cv
train_error;train_cv;
plot([2;4;8;16;32;64],train_error(1:6),"r");
hold on;
plot([2;4;8;16;32;64],train_cv(1:6),"b");
 
 end 
   
