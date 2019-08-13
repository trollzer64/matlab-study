function Atv5_1(a, b, c, d, e, f)
	% Não precisa por valores de entrada
	if nargin < 1, a = 4; b = 6; c = 35; d = -4; f = 1; e = 2; end
	if nargin < 6 || isempty(f), f = e; e = 1; end
	clc

	fprintf('Parte 1:\n\tt=%d:%d:%d', a, b, c);
	t=a:b:c
	n=length(t);
	fprintf('\tUsando linspace(%d, %d, %d)', a, c-rem(c-a,b), n)
	t_1=linspace(a, c-rem(c-a,b), n)
	n=length(t);

	fprintf('\nParte 2:\n\tt=%d:%d', d, f);
	x=d:e:f
	n=length(x);
	fprintf('\tUsando linspace(%d, %d, %d)', d, f-rem(f-d,e), n)
	x_2=linspace(d, f-rem(f-d,e), n)
	clear
end
