function Atv11_2(nMax, x)
	% Não precisa de valores de entrada
	if nargin < 1, nMax = 10000; end
	if nargin < 2, xMin = 1; xMax = nMax; end
	clc

	fprintf('Precisao: %d\n', nMax);
	soma = 0;
	for n = xMax:-1:xMin
		soma = soma + n^(-4);
	end
	fprintf('Crescente: %f\n', soma);

	soma = 0;
	for n = xMin:xMax
		soma = soma + n^(-4);
	end
	fprintf('Decrescente: %f\n', soma);
	fprintf('A ordem dos fatores nao altera a soma\nQuanto maior a precisao, mais perto de pi^4/90 o valor sera\n');
end
