function Atv9_4(inc, tMin, tMax)
	% Não precisa de valores de entrada
	% Incompleto ainda, precisa de script
	if nargin < 1, inc = .05; end
	if nargin < 2, tMin = -5; tMax = 50; end
	clc

	% 10t²-5t; 624-3t; 36t+12(t-16)²; 213e^(-0.1(t-26));
	% 0<=t<=8; 8<t<=16; 16<t<=26; t>26; 0 cc;

	t = tMin:inc:tMax;
	v_t = linspace(0, 0, length(t));

	for n = tMin-tMin:(tMax-tMin)/inc
		if (n*inc+tMin >= 0)&(n*inc+tMin <= 8)
			v = @(t) 10*t.^2-5*t;
		elseif (n*inc+tMin > 8)&(n*inc+tMin <= 16)
			v = @(t) 624-3*t;
		elseif (n*inc+tMin > 16)&(n*inc+tMin <= 26)
			v = @(t) 36*t+12*((t-16).^2);
		elseif (n*inc+tMin > 26)
			v = @(t) 213*exp(1).^(-0.1*(t-26));
		else
			v = @(t) 0*t;
		end

		v_t(n+1) = v(n*inc);
	end

	plot(t, v_t)
	grid
end
