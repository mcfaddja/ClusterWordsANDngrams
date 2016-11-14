parpool(4);
for i=1:n
    tmp1=rowSets{i,1};
    
    parfor j=1:n
        tmp2=rowSets{j,1};
        
        iSects(i,j) = ~isempty( intersect(tmp1, tmp2) );
    end
    
end