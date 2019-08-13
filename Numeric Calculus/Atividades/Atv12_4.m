clc
fprintf('a)\n');
bissec(@(x) sqrt(x)-exp(1).^(-x), 0, 1, 10^(-3))
falsaPosicao(@(x) sqrt(x)-exp(1).^(-x), 0, 1, 10^(-3))
fprintf('\n\n');

fprintf('b)\n');
bissec(@(x) log(x)-x+2, 0.1, 0.5, 10^(-3))
falsaPosicao(@(x) log(x)-x+2, 0.1, 0.5, 10^(-3))
fprintf('\n\n');

bissec(@(x) log(x)-x+2, 3, 4, 10^(-3))
falsaPosicao(@(x) log(x)-x+2, 3, 4, 10^(-3))
fprintf('\n\n');

fprintf('c)\n');
bissec(@(x) exp(1).^(x/2)-x.^3, 16, 18, 10^(-3))
falsaPosicao(@(x) exp(1).^(x/2)-x.^3, 16, 18, 10^(-3))
fprintf('\n\n');

bissec(@(x) exp(1).^(x/2)-x.^3, 1, 2, 10^(-3))
falsaPosicao(@(x) exp(1).^(x/2)-x.^3, 1, 2, 10^(-3))
fprintf('\n\n');

fprintf('d)\n');
bissec(@(x) sin(x)-x.^2, -0.2, 0.2, 10^(-3))
falsaPosicao(@(x) sin(x)-x.^2, -0.2, 0.2, 10^(-3))
fprintf('\n\n');

bissec(@(x) sin(x)-x.^2, 0.8, 1, 10^(-3))
falsaPosicao(@(x) sin(x)-x.^2, 0.8, 1, 10^(-3))
fprintf('\n\n');

fprintf('e)\n');
bissec(@(x) x/4-cos(x), -4, -3, 10^(-3))
falsaPosicao(@(x) x/4-cos(x), -4, -3, 10^(-3))
fprintf('\n');

bissec(@(x) x/4-cos(x), -3, -2, 10^(-3))
falsaPosicao(@(x) x/4-cos(x), -3, -2, 10^(-3))
fprintf('\n\n');

bissec(@(x) x/4-cos(x), 1, 2, 10^(-3))
falsaPosicao(@(x) x/4-cos(x), 1, 2, 10^(-3))
fprintf('\n\n');
