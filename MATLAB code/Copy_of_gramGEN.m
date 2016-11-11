nVAL = 2;

alpha = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
alpha = alpha';

sum = 0;
for ii=1:nVAL
    sum = sum + 26^ii;
end

grams = cell(sum, 1);
%for ii=1:sum
%    grams(i,1) = {''};
%end

cnt = 1;
ctr = ones(1,nVAL);
for i=1:nVAL
    while (ctr(1,i) < 27)
        for j=1:i
            grams(cnt,1) = strcat(grams(cnt,1), alpha(ctr(1,j),1));
        end
        
        ctr(1,1) = ctr(1,1) + 1;
        for k=2:nVAL
            if ctr(1, k-1) == 26
                ctr(1, k) = ctr(1, k) + 1;
                ctr(1, k-1) = 1;
            end
        end
        
        cnt = cnt + 1;
    end
    
    sprintf('On i = %d', cnt)
end
            