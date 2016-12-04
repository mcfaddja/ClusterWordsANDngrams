function [ wordsOut ] = wordListMaker( dictIN )
%DGAMAKER Summary of this function goes here
%   Detailed explanation goes here


randList = randi(258286, 25, 1);
wordsOut = dictIN(randList, 1);


end

