function newtonRap(func,a,tol,maxit)
	%Programa criado por Prof Marcos Figueredo
	%data: 01/02/2018
	%entrada
	%func -> funcao objetivo
	%a -> chute inicial
	%tol -> tolerancia maxima, caso nao seja informado sera tol=0.0001
	%maxit -> maximo de iteracoes, caso nao seja informado sera 50
	%Exemplo:bissec(@(x) x^3-x-2,1,2)

	if nargin<2
		error('Sao necessarios pelo menos 2 argumentos de entrada!'),end
	if nargin<3||isempty(tol),tol=0.0001;end
	if nargin<4||isempty(maxit), maxit=50;end

	xr=1;
	n = 0;
	while abs(func(xr)) <= tol
		xr = xr + n;
		n = n+0.5;
	end
	syms x;
	f1=matlabFunction(diff(func(x)));
	fprintf('\t=====================================\n');
	fprintf('\t\tMetodo de Newton Raphson\n');
	fprintf('\t=====================================\n');
	fprintf('-----------------------------------------------\n');
	fprintf('%2s%6s%12s%13s%13s\n','N','xi','x(i+1)','|er|');
	fprintf('\n-----------------------------------------------\n');
	n=1;
	while(abs(func(xr))>tol)
		if maxit==n,break,end
		xr=a-func(a)/f1(a);
		er=abs((xr-a)/xr)*100;
		if er > 100
			er = 1/er;
		end
		fprintf('%d\t%6.6f\t%6.6f\t%8.4f%%\t\n',n,a,xr,er);
		a=xr;
		n=n+1;
	end
end
