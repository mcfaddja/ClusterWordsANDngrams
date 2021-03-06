function [ gramsOut ] = GenGrams( nIN )
%GENGRAMS Summary of this function goes here
%   Detailed explanation goes here

alpha = {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
alpha = alpha';

sum = 0;
for i=1:nIN
    sum = sum + 26^i;
end

gramsOut = cell(sum, 1);

cnt = 1;
ctr = ones(1,nIN);
ctr(1,1) = 2;
while (ctr(1,nIN) < 28)
    gramsOut(cnt, 1) = alpha(ctr(1,1), 1);
    for i=2:nIN
        gramsOut(cnt,1) = strtrim(strcat(gramsOut(cnt,1), alpha(ctr(1,i), 1)));
    end
    
    ctr(1,1) = ctr(1,1) + 1;
    for j=2:nVAL
        if ctr(1, j-1) == 28
            ctr(1, j) = ctr(1,j) + 1;
            ctr(1, j-1) = 2;
        end
    end
    
    cnt = cnt + 1;
    prog = 100*cnt/sum;
    sprintf('%d percent done', prog)
end

end

