function Px = SS_power(f, varargin)
    %SS_power calculates the power of a signal
    %   P_{x} = lim((1/T)*int(|f(t)|^{2}dt, -T/2, T/2), T, Inf)
    %
    syms t;

    p = inputParser;
    validSym = @(x) ismember(t, symvar(f));
    validLimits = @(x) isvector(x) && (length(x) == 2);
    addRequired(p, 'f', validSym);
    addOptional(p, 'limits', [-Inf Inf], validLimits);

    parse(p, f, varargin{:});

    T1 = p.Results.limits(1);
    T2 = p.Results.limits(2);
    Px(t) = (1 / (T2 - T1)) * int(p.Results.f(t)^2, t, [T1 T2]);
end
