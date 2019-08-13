function Atv11_2(nMax, x)
	% Não precisa de valores de entrada
	if nargin < 1, nMax = 1000; end
	if nargin < 2, x = 1; end
	clc

	syms k;
	fprintf('S com %d termos = %f\n', nMax, symsum(1/k, k, 1, nMax));

	S = linspace(0, 0, nMax);
	S(1) = 1;
	for k=1:nMax
		S(k+1) = S(k) + 1/(k+1);
	end
	fprintf('S com algoritmo em %d passos = %f\n', nMax, S(nMax));
	fprintf('Divergencia apresentada nas duas\n');
end
