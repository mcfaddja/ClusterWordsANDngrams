function [ rowSetsNout ] = SetJoinerSER( rowSetsIN )
%SETJOINERSER Summary of this function goes here
%   Detailed explanation goes here

n = size(rowSetsIN);
n = n(1,1);

rowSetsNout = cell(n,1);

for i=1:n
	A = rowSetsIN{i,1};

	for j=i:n
		B = rowSetsIN{j,1};

		if ( ~isempty(intersect(A,B)) )
			C = union(A,B);
			rowSetsNout(i,1) = { C };
			rowSetsNout(j,1) = { C };
		end
	end
end

end

