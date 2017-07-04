function [J,gradient] = costFunctionReg(X,y,theta,lambda)

%The number of Rows and colums
m=size(X,1);
n=size(X,2);
gradient=zeros(size(theta));
J=0;

temp=sigmoid(X*theta);

size(temp); 
J=sum(y .* log(temp)+(1 .- y) .* log(1 .- temp))+(lambda/(2*m))*sum(theta(2:end).^2);
J= -(1/m)*J;
size(X'(2:end,:));
gradient(1)=(1/m)*sum(temp-y);
gradient(2:end)=(1/m)*(X'(2:end,:)*(temp-y))+(lambda/m)*theta(2:end);
end
