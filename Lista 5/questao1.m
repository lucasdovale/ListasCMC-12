function [p1, p2] = questao1(tr, Mp)
% Determinar os polos de um sistema de 2a ordem a partir do tempo de 
% subida de 0 a 100% tr e sobressinal Mp. Convencao:
% p1 = -sigma + wd * j,
% p2 = -sigma - wd * j,
% em que sigma > 0 e wd > 0.

xi = (1 + (pi/log(Mp)^2)^(-1/2);

wd = (pi - arccos(xi))/tr;

sigma = - wd * ln(Mp)/pi;

p1 = -sigma + wd * j;
p2 = -sigma - wd * j;

end
