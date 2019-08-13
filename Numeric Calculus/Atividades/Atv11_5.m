function Atv11_5(x_1)
	% Não precisa de valores de entrada
	if nargin < 1, x_1 = 0.577; end
	clc

	syms x;

	fprintf('f(x)\t\t\t\t | 3\t\t\t | 4\n=====================================================\n');

	f = 1/(1-3*x^2);
	fprintf('%s\t\t | %.3f\t\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));

	f = diff(f);
	fprintf('%s\t | %.3f\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));
end
