LLt0 = LLt;
LLt0(1:n+1:n*n)=0;

rowSets0 = SetBuilder(LLt0, 30);
card0 = cellfun('length', rowSets0);
max(card0)