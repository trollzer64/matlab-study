function Atv9_2(inc, r, L)
	% Não precisa de valores de entrada
	if nargin < 1, inc = .01; end
	if nargin < 2, r = 1; L = 1; end
	clc

	V = @(h) (r^2*acos((r-h)/r)-(r-h)*sqrt(2*r*h-h.^2))*L;
	h = 0:inc:2*r;
	V_h = linspace(0, 0, length(h));

	for n = 0:2*r/inc
		V_h(n+1) = V(n*inc);
	end

	plot(h, V_h)
	title('Volume x Profundidade (r=1 e L=1)')
	xlabel('Profundidade')
	ylabel('Volume')
	% Volume = 2*pi*r*L
end
