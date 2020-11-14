function ts = questao2(sys)
% Determinar numericamente o tempo de acomodacao de 2% ts do sistema
% dinamico sys

[y, t] = step(sys);

tf = 10 * t(end);
t = 0:0.001:tf;
y = step(sys, t);


i = length(y);
while (y(i) > 0.98 * y(end) && y(i) < 1.02 * y(end))
    i = i - 1;
end

ts = t(i+1);

end
