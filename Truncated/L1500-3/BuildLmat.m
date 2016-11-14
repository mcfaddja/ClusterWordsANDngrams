function [ myLmat ] = BuildLmat( wordsIN, gramsIN )
%BUILDLMAT Summary of this function goes here
%   Detailed explanation goes here

tmpSize = size(wordsIN);
nWords = tmpSize(1,1);

tmpSize = size(gramsIN);
nGrams = tmpSize(1,1);


myLmat = sparse(nWords, nGrams);
parpool(4);
parfor i=1:nWords
    for j=1:nGrams
        tmpSize = strfind( wordsIN{i,1}, gramsIN{j,1} );
        tmpSize = size(tmpSize);
        tmp = tmpSize(1,2);
        myLmat(i,j) = tmp;
    end
end

end

