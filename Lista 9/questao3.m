s = tf('s');
G = 1/ ((s + 1) * (s^2 + 4));
% Raio escolhido para desvio
r = 1/32;
figure;
hold on;

% Tracado do mapeamento de C1 e C2
w = (2 + r):1e-3:1000;
C1mx = zeros(size(w));
C1my = zeros(size(w));
for i=1:length(w)
sm = evalfr(G, w(i) * 1j);
C1mx(i) = real(sm);
C1my(i) = imag(sm);
end
plot(C1mx, C1my, 'b', 'LineWidth', 2);
plot(C1mx, -C1my, 'r', 'LineWidth', 2);

% Tracado do mapeamento de C4 e C5 (desvio)
angulos = -pi/2:1e-3:pi/2;
C4mx = zeros(size(angulos));
C4my = zeros(size(angulos));
for i=1:length(angulos)
sm = evalfr(G, 2 * 1j + r * exp(angulos(i) * 1j));
C4mx(i) = real(sm);
C4my(i) = imag(sm);
end
plot(C4mx, C4my, 'm', 'LineWidth', 2);
plot(C4mx, -C4my, 'k', 'LineWidth', 2);

% Tracado do mapeamento de C6
w = (-2 + r):1e-3:(2 - r);
C1mx = zeros(size(w));
C1my = zeros(size(w));
for i=1:length(w)
sm = evalfr(G, w(i) * 1j);
C1mx(i) = real(sm);
C1my(i) = imag(sm);
end
plot(C1mx, C1my, 'c', 'LineWidth', 2);
plot(C1mx, -C1my, 'c', 'LineWidth', 2);

axis equal;
grid on;
xlabel('Re\{G(j \omega)\}');
ylabel('Im\{G(j \omega)\}');