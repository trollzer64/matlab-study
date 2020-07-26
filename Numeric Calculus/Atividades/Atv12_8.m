clc

f = @(x) (-0.6)*x.^2 + 2.4*x + 5.5;
fprintf('a)\n');
	buscaRaiz(f, -10, 10, '-', 'r*')
fprintf('\n\n\n');

fprintf('b)\n');
	p= [-0.6 2.4 5.5]
	r=roots(p)
fprintf('\n\n\n');

fprintf('c)\n');
	bissec(f, 5, 10);
	newtonRap(f, 5);
	secantes(f, 5, 10);
fprintf('\n\n\n');

clear
