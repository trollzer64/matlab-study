function Atv11_8(x_1)
	if nargin < 1; x_1 = 0.49*10^(-4); end
	clc

	syms x;
	fprintf('Funcao\t\t\t\t\tResultado\n');

	f = sqrt(cos(pi/2-x));
	fprintf('%s\t\t%.6f\n', f, subs(f, x_1));

	g = sqrt(x);
	fprintf('%s\t\t\t\t\t%.6f\n', g, subs(g, x_1));
	fprintf('\nErro relativo: %f%%\n', 0)
end
