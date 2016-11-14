function [ rowSetsNout ] = SetJoinerPAR( rowSetsIN )
%SETJOINERSER Summary of this function goes here
%   Detailed explanation goes here

n = size(rowSetsIN);
n = n(1,1);

rowSetsNout = cell(n,1);

parpool(4);
for i=1:n
	A = rowSetsIN{i,1};

	parfor j=1:n
		B = rowSetsIN{j,1};

		if ( ~isempty(intersect(A,B)) )
			C = union(A,B);
			rowSetsNout(j,1) = { C };
		end
	end
end

end

