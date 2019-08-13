clc
% Criando variáveis
L = 600; E = 50000; I = 30000; w0 = 2.5;

% Definindo a função e sua derivada
f = @(x) (w0/120*E*I*L)*(-x.^5+2*L^2*x.^3-L.^4*x);
f_1 = @(x) (E*I*L*w0*(-5*x.^4+6*L.^2*x.^2-L.^4))/120;

% Achando as raizes da derivada
% buscaRaiz(f_1, -610, 610)

% Ponto um:
bissec(f_1, -610, -595)
fprintf('\nf(%f) = %f\n\n', -599.999695, f(-599.999695));
falsaPosicao(f_1, -610, -595)
fprintf('\nf(%f) = %f\n\n', -600.000000, f(-600.000000));
fprintf('\n\n');

bissec(f_1, -270, -265)
fprintf('\nf(%f) = %f\n\n', -268.328247, f(-268.328247));
falsaPosicao(f_1, -270, -265)
fprintf('\nf(%f) = %f\n\n', -268.328157, f(-268.328157));
fprintf('\n\n');

bissec(f_1, 265, 270)
fprintf('\nf(%f) = %f\n\n', 268.328247, f(268.328247));
falsaPosicao(f_1, 265, 270)
fprintf('\nf(%f) = %f\n\n', 268.328157, f(268.328157));
fprintf('\n\n');

bissec(f_1, 595, 610)
fprintf('\nf(%f) = %f\n\n', 599.999695, f(599.999695));
falsaPosicao(f_1, 595, 610)
fprintf('\nf(%f) = %f\n\n', 600.000000, f(600.000000));
fprintf('\n\n');

clear
