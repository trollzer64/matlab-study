function taylor()
	%Uso da série de taylor para se aproximar de cos(pi/3)
	clear
	clc
	syms x;	%Cria x como uma 'variável de gráfico'
	f = cos(x);	%função que queremos nos aproximar
	%f = f(x); qualquer função analítica

	nMax = input('Numero de termos (n): ' );	%n na série de Taylor
	fprintf('x da funcao %s', f);
	x_1 = vpa(input(': '));	%qual termo de x queremos nos aproximar
	a = input('Em torno do ponto: ');	%a na série de Taylor (normalmente é 0)

	fprintf('=====================================\n');
	fprintf('n\tf_n  \tf(x)\tErro\tErro(%%)\n', x_1);
	fprintf('=====================================\n');
	%Usar sempre %(i+3||2).if, sendo i o numero de casas que quer
	valor = vpa(subs(f,x_1)); %Definimos f(x_1), o valor real, quem nos queremos aproximar
	soma = linspace(0, 0, (nMax+1));
	for n = 0:nMax	%soma de n=0 até o numero desejado

		if(n == 0)	%se for o primeiro termo, soma com ele mesmo
			antes = soma(n+1);
		else
			antes = soma(n);
		end

		a_n = vpa(subs(f, a))/factorial(n);	%a_n= f(a)/n!, sendo f na derivada de grau n
		soma(n+1) = antes + a_n*(x_1 - a)^n;	%Série de Taylor

		erro_abs = abs(valor-soma(n+1));	%Erro absoluto sem escala (abs é módulo)
		erro_rel = (erro_abs/soma(n+1))*100;	%Erro relativo em %
		%O desejavel: |erro_absoluto| < erro_aceitavel

		fprintf('%d\t%s\t%7.4f\t%7.4f\t%7.4f%%\t\n', n, f, soma(n+1), erro_abs, erro_rel);
		%para n = 1, 2, 3.../ f atual (com n derivada)/ soma neste n/ erro
		f = diff(f);	%substitui f para a derivada do próximo n
	end
	%plotando um gráfico de quanto nos aproximamos conforme n aumenta
	o = 0:(nMax);
	plot(o, soma, o, soma, 's')
	title('Grafico de Soma(n)')
	xlabel('n')
	ylabel('Soma')
	grid
end
