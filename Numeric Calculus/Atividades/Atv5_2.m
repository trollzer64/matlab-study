function Atv5_2(inc, q0, R, L, C, tMin, tMax)
	% Não precisa por valores de entrada
	if nargin < 1, inc = .005; end
	if nargin < 2  q0 = 10; R = 60; L = 9; C = .00005; tMin = 0; tMax = .8; end
	clc

	q = @(t) q0*exp(1).^(R*t/(2*L))*cos(sqrt(1/(L*C)-(R/(2*L)).^2)*t);

	t = tMin:inc:tMax;
	q_t = linspace(0, 0, length(t));

	for n = tMin:tMax/inc
		q_t(n-tMin+1) = q(n*inc);
	end

	plot(t, q_t)
	title('Grafico da carga do capacitor')
	xlabel('t (s)')
	ylabel('q(t) (C)')
	grid
end
