function [A, B] = questao3(ymax, m, b, g, Kf, y0, v0, u0)
% Determine as matrizes A e B do modelo linearizado do levitador magnetico
% em torno do ponto de equilibrio (y0, v0, u0).

A = [0 1; 2 * g/(ymax - y0) -b/m];
B = [0; 2 * sqrt(Kf * g/m)/(ymax - y0)];

end
