function y = questao1(w, Au, phiu, Kp, Kd, m, b)
% Determinar a saida em regime permanente senoidal assumindo referencia
% nula e perturbacao senoidal na forma d(t) = Ad * sin(w * t + phid).

phiy = phid + atan(w * (Kd + b)/(m * w^2 - Kp));
Ay = Au/sqrt((m * w^2 - Kp)^2 + w^2 * (Kd + b)^2);

y = @(t) Ay * sin(w * t + phiy);

end
