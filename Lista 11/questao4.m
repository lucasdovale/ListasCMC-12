function deltaPM = questao4()
% Calcule a perda de margem de fase provocada pelos atrasos na malha.
% Retorne um valor positivo.

wcp = 9.6549;
atraso = 0.1;
deltaPM = (atraso * wcp) * 180/pi;


end