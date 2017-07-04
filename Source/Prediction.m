function [miss_classify,miss_classified_at,accuracy] = Prediction(X,y,final_theta)

miss_classify=0;
temp=sigmoid(final_theta*X');
[max_num index]=max(temp);
index=index';
index=index.-1;
accuracy=double(mean(index==y))*100;
sum(index!=y);
mis_classified_as=find((index!=y)==1);
miss_classified_at=index(mis_classified_as(1:end));
miss_classify=(sum(index!=y))/size(X,1);
