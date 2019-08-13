clc

f = @(x) x.^5 - 8*x.^4 + 44*x.^3 - 91*x.^2 + 85*x - 26;
fprintf('a)\n');
	buscaRaiz(f, -2, 4, '-', 'r*')
fprintf('\n\n\n');

fprintf('b)\n');
	bissec(f, 0.5, 1, 0.05);
	newtonRap(f, 0.5, 0.1);
	secantes(f, 0.5, 1, 0.5);
fprintf('\n\n\n');

clear
