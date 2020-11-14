function [Kp, Kv] = questao2()
% Projetar Kp e Kv para que o carro autonomo tenha banda passante de 1 Hz e
% margem de fase de 60 graus. Usar formulas exatas, i.e. sem aproximacoes.
b = 50;
m = 1000;
xi = sqrt(3/8);
wb = 2 * pi;
wn = wb/sqrt(1 - 2 * xi^2 + sqrt(4 * xi^4 - 4 * xi^2 + 2));

Kv = 2 * xi * wn * m - b;
Kp = m * wn^2/Kv;

end