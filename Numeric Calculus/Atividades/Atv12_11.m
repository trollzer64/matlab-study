clc
fprintf('1.\n'); f = @(x) 4*cos(x)-exp(1).^(2*x);
	secantes_m(f, 1);
fprintf('\n\n\n');

fprintf('2.\n'); f = @(x) x/2-(sin(x)./cos(x));
	fprintf('Funcao com infinitas raizes (positivas e negativas)\n');

	secantes_m(f, -0.5);
	fprintf('\n\n');
fprintf('\n\n\n');

fprintf('3.\n'); f = @(x) 1-x.*log(x);
	secantes_m(f, 1.5);
fprintf('\n\n\n');

fprintf('4.\n'); f = @(x) 2.^x-3*x;
	secantes_m(f, 0);
	fprintf('\n\n');

	secantes_m(f, 3);
fprintf('\n\n\n');

fprintf('5.\n'); f = @(x) x.^3+x-1000;
	secantes_m(f, 9);
fprintf('\n\n\n');

fprintf('Secante modificada apresenta um desempenho melhor na maioria dos casos\n');
fprintf('Com menos passos, e mais precisão a casa passo\n');

clear
