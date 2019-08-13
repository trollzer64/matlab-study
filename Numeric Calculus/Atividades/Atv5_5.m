function Atv5_5(inc, tMin, tMax)
	% Não precisa de valores de entrada
	if nargin < 1, inc = .01; end
	if nargin < 2, tMin = 0; tMax = 100; end
	clc

	x = @(t) sin(t).*(exp(1).^(cos(t))-2*cos(4*t)-sin(t/12).^5);
	y = @(t) cos(t).*(exp(1).^(cos(t))-2*cos(4*t)-sin(t/12).^5);
	t = tMin:inc:tMax;
	subplot(1, 2, 2);
	plot3(x(t), y(t), t);
	title('(a)')
	xlabel('x(t)')
	ylabel('y(t)')
	zlabel('t')
	subplot(1, 2, 1);
	plot(y(t), x(t))
	axis square
	title('(b)')
	xlabel('y(t)')
	ylabel('x(t)')
end
