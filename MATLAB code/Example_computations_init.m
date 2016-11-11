L = zeros(9,18);
L
LLt = L * L'
LLt0 = LLt - diag(diag(LLt))