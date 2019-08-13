function Atv9_5(inc)
	% Não precisa de valores de entrada
	if nargin < 1, inc = 100; end
	clc

	axes('NextPlot', 'add', 'XLim', [-1,1], 'YLim', [-1,1]);
	for k = 1:inc
		data = k/inc;  % Entre 0 e 1
		x = cos(data*2*pi);
		y = sin(data*2*pi);
		plot(x, y, 'k-.o');
		pbaspect([1 1 1])
		pause(0.05);
	end
end
