function [ gramsOut ] = Appender( gramsIn )
%APPENDER Summary of this function goes here
%   Detailed explanation goes here

alpha = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
alpha = alpha';

dims = size(gramsIn);
n = dims(1,1);

gramsOut = cell(26*n + n, 1);
for ii=1:n
    gramsOut(ii,1) = gramsIn(ii,1);
end
    
cnt = n + 1;

for i=1:n
    for j=1:26
        gramsOut(cnt,1) = strcat(gramsIn(i,1), alpha(j,1));
    
        cnt = cnt + 1;
    end
end

end

