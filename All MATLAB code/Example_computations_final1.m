load EXdataL.mat
L
LLt = L * L'
LLt0 = LLt - diag(diag(LLt))