clc; 

%Loading the data
load('ocr.mat');

%Part 2-Randomizing it for various values of n
n=[1000,2000,4000,8000];
testerror=zeros(size(n,2),1); %Vector containing the test errors corresponding to the various values of n
loop=0; %The loop variable for running the repeating the same process 10 times 
while loop<10
    i=1;   %Variable for indexing the testerror
    for j=1:size(n,2) %Loop for testing the error rates for various values of n 
        sel=randsample(60000,n(j));
        x2=sum(data(sel,:).^2,2); %Computing the values of x^2
        xy=data(sel,:)*testdata';  %Computing xy
        y2=sum(testdata.^2,2)'; %Computing the values of y2
        [dists,I] = min((bsxfun(@plus, y2, bsxfun(@minus, x2, 2*xy)))); %dists contains the actual distance and I contains the Index
        preds=labels(sel(I));
        testerror(i)=testerror(i)+(sum((preds==testlabels)==0)/size(preds,1))*100;
        i=i+1;
    end
    loop=loop+1;
end
testerror=testerror./10; %Storing the average testerror for the ten times
error=mean(testerror); %Finding the mean error for all the runs 
display(testerror);
display(error);

xlabel('n');
ylabel('error');
axis([0 60000 0 5]);
errorbar(n,testerror,std(testerror));