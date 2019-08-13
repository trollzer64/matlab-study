clc

p = 10^(-2);
fprintf('1.\n'); f = @(x) x/2 -(sin(x)./cos(x));
	newtonRap(f, 0.5, p);
fprintf('\n\n\n');

fprintf('2.\n'); f = @(x) 2*cos(x)-0.5*exp(1).^x;
	newtonRap(f, 1, p);
fprintf('\n\n\n');

fprintf('3.\n'); f = @(x) x.^5-6;
	newtonRap(f, 2, p);
fprintf('\n\n\n');

clear
