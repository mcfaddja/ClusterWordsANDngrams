function [ setsOut ] = SetJoiner( setsIn )
%SETJOINER Summary of this function goes here
%   Detailed explanation goes here

n = size(setsIn);
n = n(1,1);

setsOut = setsIn;

for i=1:n
    A = setsIn{i,1};
    
    for j=(i+1):(n-1)
        B = setsIn{j,1};
        
        if ( ~isempty(intersect(A,B)) )
            C = union(A, B);
            
            setsOut(i,1) = { C };
            setsOut(j,1) = { C };
        end
    end
end


end

