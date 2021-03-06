function [ myLmat ] = BuildLmat( wordsIN, gramsIN )
%% BUILDLMAT Construct the L matrix using passed words (domians) and n-grams.
%   Constructs the L matrix by counting the number of times an n-gram 
%       (columns) appears in a given word/domain (rows).  Accepts cell 
%       arrays as inputs and outputs result as a sparse matrix.  Calls for 
%       a parallel pool of size 4 on the local machine.  This may need to 
%       be modified based on the number of available cores on the local 
%       machine.  Additionally, any existing parallel pools on the local 
%       machine should be shutdown prior to running this code.

tmpSize = size(wordsIN);
nWords = tmpSize(1,1); % number of words

tmpSize = size(gramsIN);
nGrams = tmpSize(1,1); % number of n-grams


myLmat = sparse(nWords, nGrams); % allocate sparse matrix of 0s for result

parpool(4); % start parallel pool
parfor i=1:nWords
    for j=1:nGrams
        % stores number of occurances in an array representing the
        % localtions of the given n-grams within the current word.
        tmpSize = strfind( wordsIN{i,1}, gramsIN{j,1} );
        
        
        % converts array size (representing the number of occurances) to an
        % integer.
        tmpSize = size(tmpSize); 
        tmp = tmpSize(1,2);
        
        % store current result in the L matrix to be output.
        myLmat(i,j) = tmp;
    end
end

end

