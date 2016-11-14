function [ setsOut ] = SetBuilder( LL, thresh )
%SETBUILDER Summary of this function goes here
%   Detailed explanation goes here

n = size(LL);
n = n(1,1);

LL(1:n+1:n*n)=0;

parpool(4);
parfor i=1:n
    tmp = find( LL(i,:) > thresh );
    tmp = [tmp, i];
    
    setsOut(i,1) = { tmp };
end

end

