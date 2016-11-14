function [ myGrams ] = AgramMaker( nIN )
%AGRAMMAKER Summary of this function goes here
%   Detailed explanation goes here

alpha = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
alpha = alpha';

tot = 0;
for ii=1:nIN
    tot = tot + 26^ii;
end

myGrams = cell(tot,1);

for jj=1:26
    myGrams(jj,1) = alpha(jj,1);
end

j=1;
sprintf('Curently on i = %d', j)
if nIN > 1
    for k=2:nIN
        sprintf('Curently on i = %d', k)
        myGrams = Appender(myGrams);
    end
end

end

