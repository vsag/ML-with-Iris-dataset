function [theta] = trainLogReg(X,y,lambda,num_labels)


for values=1:num_labels,
  initial_theta=zeros(size(X,2),1);
  
  costFunction= @(t) costFunctionReg(X,(y==values-1),t,lambda);
  options=optimset("MaxIter",400,'GradObj','on');
  initial_theta=fminunc(costFunction,initial_theta,options);
  theta(values,:)=initial_theta';
 end
 
 
