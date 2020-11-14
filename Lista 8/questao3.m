function [magnitude, fase] = questao3(sys, w)
% Calcula valores de magnitude e fase de uma aproximacao para tracado
% manual do diagrama de Bode da funcao de transferencia sys nas frequencias
% das por w. Os valores de magnitude e fase sao dados em dB e graus,
% respectivamente. Note que
% magnitude(i) = |sys(j * w(i)|,
% fase(i) = fas(sys(j * w(i)).

zeross = sort(zero(sys) * -1);
polos = sort(pole(sys) * -1);

% Auxiliares para o gráfico de fase
z1 = 0.1 * zeross;
z2 = 10 * zeross;
p1 = 0.1 * polos;
p2 = 10 * polos;

magnitude = ones(1, length(w));
fase = zeros(1, length(w));

% Vetor de magnitutde
for i = 1:length(w)
    % Ganho DC
    mag = 20 * log10(evalfr(sys,0));
    j = 1;
    if ~isempty(polos)
        while w(i) > polos(j) 
            % Efeito dos polos (subtrai)
            mag = mag - 20 * log10(w(i)/polos(j));
            if j < length(polos)
                j = j + 1;
            else
                break;
            end
        end
    end
    k = 1;
    if ~isempty(zeross)
        while w(i) > zeross(k)
            % Efeito dos zeros (soma)
            mag = mag + 20 * log10(w(i)/zeross(k));
            if k < length(zeross)
                k = k + 1;
            else
                break
            end 
        end
    end
    magnitude(i) = mag;
end


% Vetor de fase
for i = 1:length(w)
    fas = 0;
    j = 1;
    if ~isempty(p1)
        while w(i) > p1(j)
            % Primeiro intervalo pros polos (subtrai)
            fas = fas - 45 * log10(w(i)/p1(j));
            if j < length(p1)
                j = j + 1;
            else
                break
            end
        end
    end
    k = 1;
    if ~isempty(p2)
        while w(i) > p2(k)
            % Segundo intervalo pros polos (soma)
            fas = fas + 45 * log10(w(i)/p2(k));
            if k < length(p2)
                k = k + 1;
            else
                break
            end
        end
    end
    p = 1;
    if ~isempty(z1)
        while w(i) > z1(p)
            % Primeiro intervalo pros zeros (soma)
            fas = fas + 45 * log10(w(i)/z1(p));
            if p < length(z1)
                p = p + 1;
            else
                break
            end
        end
    end
    q = 1;
    if ~isempty(z2)
        while w(i) > z2(q)
            % Segundo intervalo pros zeros (subtrai)
            fas = fas - 45 * log10(w(i)/z2(q));
            if q < length(z2)
                q = q + 1;
            else
                break
            end
        end
    end
    fase(i) = fas;
end
