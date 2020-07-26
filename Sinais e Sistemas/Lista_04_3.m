% 1.4-3 Simplificar expressões
syms t;

% a) (sin(t)/(t^2+2))*dirac(t)
a(t) = (sin(t) / (t^2 + 2)) * dirac(t);
a(t) = simplifica(a, t)

syms w;
% b) (sin(t)/(t^2+2))*dirac(t)
b(t) = ((1i * w + 2) / (w^2 + 9)) * dirac(w);
b(t) = simplifica(b, w)

% c) (sin(t)/(t^2+2))*dirac(t)
c(t) = (exp(-t) * cos(3 * t - deg2rad(60))) * dirac(t);
c(t) = simplifica(c, t)

function output = simplifica(f, var)
    f0(var) = f(var) / dirac(var);
    output = f0(0) * dirac(var);
end
