function G = questao3(J, b, R, L, Kt)
% Defina a funcao de transferencia G do motor eletrico usando tf ou zpk.
% Caso queira, pode usar o truque de definir s: s = tf('s');

num = Kt;
den = [J * L, (b * L + R * J), (R * b + Kt^2), 0];

G = tf(num, den)

end
