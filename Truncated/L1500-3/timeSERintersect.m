iSectsSER=sparse(n,n,10000);
for i=1:n
    tmp1=rowSets{i,1};
    
    for j=i:n
        tmp2=rowSets{j,1};

        iSectsSER(i,j) = ~isempty( intersect(tmp1, tmp2) );
    end
end