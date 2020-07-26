function erro(x, n, valor)
	%Serie de Taylor
  clc
  fprintf('===================================================================\n');
  fprintf(' Termo | Valor Esperado | Resultado | Erro Absoluto | Erro Relativo\n');
  fprintf('-------------------------------------------------------------------\n');

	soma = linspace(0, 0, n);

	m = 0;
	while(m < n)
		if(m == 0)
			aprox = soma(m+1);
		else
			aprox = soma(m);
		end
		soma(m+1) = aprox + (x^m)/factorial(m); %soma = soma + função
    erro_abs = abs(valor-soma(m+1)); %Erro absoluto sem escala
    erro_rel = erro_abs/valor*100; %Erro relativo em %
    %O desejavel: |erro_absoluto| < erro_aceitavel
    fprintf('    %2d |       %f |  %f |      %f |    %9f%%\n', m+1, valor, soma(m+1), erro_abs, erro_rel);
    m = m + 1;
  end

	o = 1:(n);
	plot(o, soma, o, soma, 's')
	title('Grafico de Soma(n)')
	xlabel('n')
	ylabel('Soma')
	grid
end
