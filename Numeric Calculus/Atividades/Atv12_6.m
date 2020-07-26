clc
fprintf('1.\n'); f = @(x) 4*cos(x)-exp(1).^(2*x);
	buscaRaiz(f, (-9/2)*pi, 1);
	fprintf('\nFuncao cossenoide, raizes regulares de pi/2 em em x < -9\n');
	fprintf('Em x > -9, e^(2x) passa a ter valor significativo nas raizes:\n\n\n');

	newtonRap(f, -8);
	secantes(f, -8, -5*pi/2);
	fprintf('\n\n');

	newtonRap(f, -5);
	secantes(f, -5, -3*pi/2);
	fprintf('\n\n');

	newtonRap(f, -1);
	secantes(f, -1, -pi/2);
	fprintf('\n\n');

	fprintf('\nUltima raiz:\n');
	newtonRap(f, 1);
	secantes(f, 1, 0);
fprintf('\n\n\n'); figure

fprintf('2.\n'); f = @(x) x/2-(sin(x)./cos(x));
	buscaRaiz(f, -5, 5, '*')
	ylim([-10 10])
	fprintf('Funcao com infinitas raizes (positivas e negativas)\n');

	newtonRap(f, 0.5);
	secantes(f, -0.5, 0.1);
	fprintf('\n\n');

	newtonRap(f, 4);
	secantes(f, 4, 4.5);
	fprintf('\n\n');

	newtonRap(f, 7.5);
	secantes(f, 7.5, 8);
	fprintf('\n\n');
fprintf('\n\n\n'); figure

fprintf('3.\n'); f = @(x) 1-x.*log(x);
	buscaRaiz(f, 1, 2);

	newtonRap(f, exp(1));
	secantes(f, 1.5, exp(1));
fprintf('\n\n\n'); figure

fprintf('4.\n'); f = @(x) 2.^x-3*x;
	buscaRaiz(f, 0, 4);

	newtonRap(f, 0);
	secantes(f, 0, 1);
	fprintf('\n\n');

	newtonRap(f, 3);
	secantes(f, 3, 4);
fprintf('\n\n\n'); figure

fprintf('5.\n'); f = @(x) x.^3+x-1000;
	buscaRaiz(f, 9, 11);

	newtonRap(f, 9);
	secantes(f, 9, 11);
fprintf('\n\n\n');
clear
