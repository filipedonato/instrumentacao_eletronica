%Filipe Soares Donato
%Instrumentação - Exp_4 - Deformação
clc; clear; close all;
%carregamos o arquivo no MatLab
load 'dados.txt';
y = dados/100; %Esse valor de 100 é pra ficar na mesma escala no gráfico
forca = [0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5,...
        0.6, 0.7, 0.8, 0.9, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3];

%Encontramos os valores  do polinômio característico
% que representa os pontos com a polyfit e polyval
p1 = polyfit(forca, y, 2)       %Grau 2 já é suficiente
p2 = polyval(p1, y);


%Plotando o grafico dos pontos obtidos e da reta
figure(1);
plot(forca,y,'o');
hold on;
plot(y, p2, 'r--');
xlabel('Força');
ylabel('Deformação');
title('Modelo 1');
grid on;
