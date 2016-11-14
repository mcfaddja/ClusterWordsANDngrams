tmpDict = dictionary(1:1500,:);
L = BuildLmat(tmpDict,grams);

LLt = L * L';


maxes=max(LLt);
means=mean(LLt);
stds=std(LLt);

max(maxes)
max(means)
max(stds)


LLtWORK=LLt;
LLtWORK = LLtWORK - diag(diag(LLtWORK));
for i=16:36
toZero=LLt<i;
LLtWORK(toZero)=0;
spy(LLtWORK);
name = strcat('MINis',num2str(i));
name = strcat(name,'.jpg');
saveas(gcf,name);
end