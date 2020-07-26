function secantes_m(func,a, pert,tol,maxit)
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
if nargin<3||isempty(pert), pert=0.01;end
if nargin<4||isempty(tol), tol=0.0001;end
if nargin<5||isempty(maxit), maxit=50;end

xr=1;
n = 0;
if a == 0
	a = pert;
end
while abs(func(xr)) <= tol
	xr = xr + n;
	n = n+1;
end
fprintf('\t=====================================\n');
fprintf('\t\tMetodo da Secante\n');
fprintf('\t=====================================\n');
fprintf('-----------------------------------------------\n');
fprintf('%2s%10s%10s%12s%14s%13s\n','N','xi','xi+pxi','x(i+1)','|er|');
fprintf('\n-----------------------------------------------\n');
i=1;
b=pert*a;
while(abs(func(xr))>tol)
	if maxit==i,break,end
	xr=a-(b*func(a))/(func(a+b)-func(a));
	er=abs((xr-a)/xr)*100;
	if er > 100
		er = 1/er;
	end
	fprintf('%d\t%6.6f\t%6.6f\t%6.6f\t%8.4f%%\t\n',i,a,a+b,xr,er);
	a=xr;
	b=pert*a;
	i=i+1;
end
