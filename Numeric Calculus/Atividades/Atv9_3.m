function Atv9_3(a, erroMin)
	% Não precisa de valores de entrada
	if nargin < 1, a = 0; end
	if nargin < 2, erroMin = 10^(-4); end
	clc

	fprintf('Termo\tsqrt(%.2f)\tErro\n', a);

	if a < 0
		img = -1;
	else
		img = 1;
	end
	x = a*img;
	erro = a*img;
	a = a*img;
	n = 0;

	if a > 0
		while (erro > erroMin)
			n = n+1;
			x0 = x;
			x = (x0+a/x0)/2;
			erro = abs((x-x0)/x);
			if img == 1
				fprintf('%d\t\t%f\t%f%%\n', n, x, erro/100);
			else
				fprintf('%d\t\t%fi\t%f%%\n', n, x, erro/100);
			end
		end
	else
		fprintf('%d\t\t%f\t%f%%\n', 1, x, erro/100);
	end
end
