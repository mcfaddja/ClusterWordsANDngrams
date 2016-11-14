load testGrams.mat
load testWords.mat
Lmat = BuildLmat(testWords,testGrams);
LLt = Lmat * Lmat'