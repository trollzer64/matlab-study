function Atv11_4(nMax, x, valor)
	% Não precisa de valores de entrada
	if nargin < 1, nMax = 20; end
	if nargin < 2, x = 5; valor = 6.737947*10^-3; end
	clc

	% LETRA A
	e = 0;
	m = -1;
	for n=0:nMax
		m = m*(-1);
		e = e+(m*x^n)/factorial(n);
	end
	fprintf('a) e^(-%.2f) %f | erro: %f%%\n', x, e, abs(100*(valor-e)/valor));

	% LETRA B
	e = 0;
	for n=0:nMax
		e = e+(x^n)/factorial(n);
	end
	e = e^(-1);
	fprintf('b) e^(-%.2f) %f | erro: %f%%\n', x, e, abs(100*(valor-e)/valor));
end
