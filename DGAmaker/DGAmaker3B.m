function [ dgaS ] = DGAmaker3B( wordsIn1, wordsIn2, wordsIn3 )
%DGA Summary of this function goes here
%   Detailed explanation goes here


%aSum = 0;
%for i=1:50
%    aSum = aSum + 


dgaCNT = 10^3;

dgaS = cell(dgaCNT, 1);
cnt = 1;
for i=1:10
    word1 = wordsIn1{i,1};
    
    for j=1:10
        word2 = wordsIn2{j,1};
        
        for k=1:10
            word3 = wordsIn3{k,1};
            
            dgaS{cnt,1} = strcat(word1, word2, word3);
            cnt = cnt + 1;
        end
    end
end














end

