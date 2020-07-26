function Atv5_3(inc, zMin, zMax)
	% Não precisa por valores de entrada
	if nargin < 1, inc = .1; end
	if nargin < 2, zMin = -5; zMax = 5; end
	clc

	f = @(z) 1/(sqrt(2*pi)*exp(1).^(-(z.^2/2)));

	z = zMin:inc:zMax;
	f_z = linspace(0, 0, length(z));

	for n = zMin:zMax/inc
		f_z(n-zMin+1) = f(n*inc);
	end

	plot(z, f_z)
	title('Grafico da densidade de probabilidade normal')
	xlabel('z')
	ylabel('Frequencia')
	grid
end
