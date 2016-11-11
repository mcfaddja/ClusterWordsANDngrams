nVAL = 5;

alpha = {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
alpha = alpha';

sum = 0;
for i=1:nVAL
    sum = sum + 26^i;
end

grams = cell(sum, 1);

cnt = 1;
ctr = ones(1,nVAL);
ctr(1,1) = 2;
while (ctr(1,nVAL) < 28)
    grams(cnt, 1) = alpha(ctr(1,1), 1);
    for i=2:nVAL
        grams(cnt,1) = strtrim(strcat(grams(cnt,1), alpha(ctr(1,i), 1)));
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

