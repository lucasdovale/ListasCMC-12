function [Kp, Kv] = questao2(R, Kt, J, b, wn, xi)
% Use as variaveis R, Kt, J, b, wn e xi para definir a sua resposta.
% Talvez voce nao precise de todas as variaveis para definir sua resposta.
% Definir Kp e Kv, que sao retornados pela funcao.

syms R Kt J b wn xi

Kp = R*J*(wn)^2/(2*xi*wn*R*J - R*b - Kt^2)
Kv = (2*xi*wn*R*J - R*b - Kt^2)/Kt

end
