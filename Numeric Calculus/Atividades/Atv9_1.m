function Atv9_1(P, nMax, t)
	% Não precisa de valores de entrada
	if nargin < 1, P = 100000; nMax = 5; t = 3.3/100; end
	clc
	fprintf('|n\t|\tA\t\t  |\n|=================|\n')
	for n=1:nMax
		A(n) = P*(t*(1+t).^n)/((1+t).^n-1);
		fprintf('|%d\t|\t%10.3f|\n',n,A(n));
	end
end
