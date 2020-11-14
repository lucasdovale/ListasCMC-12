t = 0:0.01:3
% Função da posição calculada analiticamente
x = -exp(-1.4*t).*cos(1.43*t) - 0.98*exp(-1.4*t).*sin(1.43*t) + 1
plot(t, x)
hold on
xlabel('Tempo (s)')
ylabel('Posição (m)')
legend('x(t)')
title('Posição do bloco no tempo')
grid on % Coloca uma malha no grafico (ajuda a ler)
% salva figura como png
print -dpng grafico.png