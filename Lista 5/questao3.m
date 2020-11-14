function [Kp, Ki] = questao3(wn, xi, L, R)
% Determinar os ganhos Kp e Ki para alocar os polos em malha fechada
% do sistema em:
% p12 = -xi * wn +- wn * sqrt(1 - xi^2).

Ki = wn^2 * L;
Kp = 2 * xi * wn * L - R;

end
