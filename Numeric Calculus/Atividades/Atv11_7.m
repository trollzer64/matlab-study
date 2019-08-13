function Atv11_7(x_1, valor)
	% Não precisa de valores de entrada
	if nargin < 1, x_1 = 0.3*pi; end
	if nargin < 2, valor = 0.58778525; end
	clc

	fprintf('====================================================\n');
	fprintf('n\t Valor\t\t f(x)\t\t  Erro\t\t\t Erro(%%)\n');
	fprintf('====================================================\n');

	syms x;
	soma = 0*x;
	n = 0;
	sinal = 1;
	erro_abs = 1;
	while ~(erro_abs == 0.00000000)&&(n < 6);

		soma = soma+sinal*x^(2*n)/factorial(2*n);

		erro_abs = abs(valor-subs(soma, x_1));
		erro_rel = abs(erro_abs/subs(soma, x_1))*100;

		fprintf('%d\t %.8f\t %.8f\t %11.8f\t %7.4f%%\t\n', n+1, valor, subs(soma, x_1), erro_abs, erro_rel);

		sinal = sinal*(-1);
		n = n+1;
	end
end
