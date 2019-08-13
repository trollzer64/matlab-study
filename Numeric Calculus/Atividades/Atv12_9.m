clc

f = @(x) 4*x.^3 - 6*x.^2 + 7*x - 2.3;
fprintf('a)\n');
	buscaRaiz(f, -10, 10, '-', 'r*')
fprintf('\n\n\n');

fprintf('b)\n');
	bissec(f, 0, 1, 0.05);
	newtonRap(f, 0, 0.01);
	secantes(f, 0, 1, 0.01);
fprintf('\n\n\n');

clear
