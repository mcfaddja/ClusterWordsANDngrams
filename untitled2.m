load dictionary.mat
load grams3.mat
tmpDict = dictionary(1:1500);
L = BuildMat2(tmpDict, grams);
L = BuildLmat2(tmpDict, grams);
LLt0 = LLt;
LLt0(1:n+1:n*n)=0;
rowSets0 = SetBuilder2(LLt0, 30);
card0 = cellfun('length', rowSets0);
max(card0)
LLt = L * L';
LLt0 = LLt;
LLt0(1:n+1:n*n)=0;
rowSets0 = SetBuilder2(LLt0, 30);
card0 = cellfun('length', rowSets0);
max(card0)
LLt = L * L';
n = size(LLt);
n = n(1,1);
LLt0 = LLt;
LLt0(1:n+1:n*n)=0;
rowSets0 = SetBuilder2(LLt0, 30);
card0 = cellfun('length', rowSets0);
max(card0)
rowSets1 = SetJoiner(rowSets0);
rowSets2 = SetJoiner(rowSets1);
rowSets3 = setJoiner(rowSets2);
rowSets3 = SetJoiner(rowSets2);
rowSets4 = SetJoiner(rowSets3);
rowSets5 = SetJoiner(rowSets4);
tmp0 = cellfun('length', rowSets0);
tmp1 = cellfun('length', rowSets1);
tmp2 = cellfun('length', rowSets2);
tmp3 = cellfun('length', rowSets3);
tmp4 = cellfun('length', rowSets4);
tmp5 = cellfun('length', rowSets5);
tmp5-tmp4;
max(ans);