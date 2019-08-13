function falsaPosicao(func,a,b,tol,maxit)
	%Programa criado por Prof Marcos Figueredo
	%data: 01/04/2018
	%entrada
	%func -> funcao objetivo
	%a,b -> extremos que contenham uma raiz
	%tol -> tolerancia maxima, caso nao seja informado sera tol=0.0001
	%maxit -> maximo de iteracoes, caso nao seja informado sera 50
	%Exemplo:bissec(@(x) x^3-x-2,1,2)

	if nargin<3
		error('Sao necessarios pelo menos 3 argumentos de entrada!'),end
	test=func(a)*func(b);
	if test>0,error('nao existem solucoes no intervalo!'),end
	if nargin<4||isempty(tol),tol=1*10^(-3);end
	if nargin<5||isempty(maxit), maxit=50;end
	i=1;
	x = -1;
	while(func(x) == 0)
		x = x+1;
	end
	fprintf('\t=====================================\n');
	fprintf('\t\tMetodo da Falsa Posicao\n');
	fprintf('\t=====================================\n\n\n');
	fprintf('-----------------------------------------------\n');
	fprintf('%2s%6s%12s%13s%13s\n','N','a','b', 'xr' ,'|er|');
	fprintf('-----------------------------------------------\n');
	while(abs(func(x))>tol)
		if maxit==i,break,end
			if(i==1)
				x_old=a;
			else
				x_old=x;
		end
		x=(a*func(b)-b*func(a))/(func(b)-func(a));
		er=abs((x_old-x)/x)*100;
		fprintf('%d\t%6.6f\t%6.6f\t%6.6f\t%8.4f%%\t\n',i,a,b,x,er);
		if func(x)*func(a)<0
			b=x;
		else
			a=x;
		end
		i=i+1;
	end
end
