function [type_1,temp] = PCA(X,y)

[m,n]=size(X);
U=0;S=0;V=0;
means=zeros(size(X,2),1);
temp=X;
size(temp)
mu = mean(X);
temp = bsxfun(@minus, temp, mu);


Sigma=(1/m)*(temp'*temp);
[U,S,V]=svd(Sigma);
U_reduce=U(:,1:2);
temp=temp*U_reduce;
size(temp);
type_1=find(y==0);
type_2=find(y==1);
type_3=find(y==2);


plot(temp(type_3,1),temp(type_3,2),"g*","markersize",10);
hold on;
plot(temp(type_1,1),temp(type_1,2),"k+","markersize",10);
hold on;
plot(temp(type_2,1),temp(type_2,2),"ro","markersize",10);
hold off;

%plot(temp(type_1),"k+","markersize",10);
%hold on;
%plot(temp(type_2),"ro","markersize",10);
%hold on;
%plot(temp(type_3),"g*","markersize",10);
%hold off;
end