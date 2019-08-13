function Atv11_1(nMax, x_1, a, f)
	% Não precisa de valores de entrada
	if nargin < 1, nMax = 10; end
	if nargin < 2, x_1 = 47*pi/180; end
	if nargin < 3, a = pi/4; end
	if nargin < 4, syms x; f = cos(x); end
	clc

	fprintf('=====================================\n');
	fprintf('n\tf_n  \tf(x)\tErro\tErro(%%)\n');
	fprintf('=====================================\n');

	valor = vpa(subs(f,x_1));
	soma = linspace(0, 0, (nMax+1));
	for n = 0:nMax

		if(n == 0)
			antes = soma(n+1);
		else
			antes = soma(n);
		end

		a_n = vpa(subs(f, a))/factorial(n);
		soma(n+1) = antes + a_n*(x_1 - a)^n;

		erro_abs = abs(valor-soma(n+1));
		erro_rel = abs(erro_abs/soma(n+1))*100;

		fprintf('%d\t%s\t%7.4f\t%7.4f\t%7.4f%%\t\n', n, f, soma(n+1), erro_abs, erro_rel);

		f = diff(f);
	end
end
