clc
e0 = 8.9*10.^(-12); q = 2*10^(-5); Q = 2*10^(-5); a = 0.85;
f = @(x) (q*Q*x)/((x.^2+a.^2).^(3/2))*1/(4*pi*e0) - 1.25;
falsaPosicao(f, 0, 1)
falsaPosicao(f, 1, 2)
clear
