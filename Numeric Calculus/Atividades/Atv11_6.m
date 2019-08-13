function Atv11_6(x_1)
	% Não precisa de valores de entrada
	if nargin < 1, x_1 = 1.37; end
	clc

	syms x;
	fprintf('LETRA A)\n')
	fprintf('f(x)\t\t\t\t\t\t | 3\t\t\t | 4\n=====================================================\n');

	f = x^3-7*x^2+8*x-0.35;
	fprintf('%s\t | %.3f\t\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));

	f = diff(f);
	fprintf('%s\t\t\t | %.3f\t\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));


	fprintf('\nLETRA B)\n')
	fprintf('f(x)\t\t\t\t\t\t | 3\t\t\t | 4\n=====================================================\n');

	f = ((x-7)*x+8)*x-0.35;
	fprintf('%s\t | %.3f\t\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));

	f = diff(f);
	fprintf('%s\t | %.3f\t\t | %.4f\n', f, subs(f, x_1), subs(f, x_1));
end
