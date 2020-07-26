function Atv5_4(inc, nMax, xMin, xMax)
	% Não precisa por valores de entrada
	if nargin < 1, inc = .01; end
	if nargin < 2, nMax = 8; end
	if nargin < 3, xMin = 0; xMax = 3*pi/2; end
	clc

	x = xMin:inc:xMax;
	f_x = linspace(0, 0, length(x));
	for t=(xMin/inc):(xMax/inc)
		n = 0;
		p = -1;
		f = @(x) 0;
		while n<=nMax
			p = p*(-1);
			f = @(x) p*(x^(2*n)/factorial(2*n));
			n = n+1;
			f_x(t-xMin+1) = f_x(t-xMin+1)+f(t*inc);
		end
	end

	for t=0:3
		x(length(x)-t) = [];
		f_x(length(x)-t) = [];
	end

	plot(x, f_x)
	grid
end
