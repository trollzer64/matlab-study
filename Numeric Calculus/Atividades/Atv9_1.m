function Atv9_1(P, nMax, t)
	% Não precisa de valores de entrada
	if nargin < 1, P = 100000; nMax = 5; t = 3.3/100; end
	clc
    A = zeros(nMax,1);
    for n=1:nMax
        A(n,1) = P*(t*(1+t).^n)/((1+t).^n-1);
    end
    n = (1:nMax)';
    table(n, A)
end
