function Ex = SS_energy(f, varargin)
    %SS_energy calculates the energy of a signal
    %   E_{x} = int(|f(t)|^{2}dt, -Inf, Inf)
    syms t;
    p = inputParser;
    validSym = @(x) ismember(t, symvar(f));
    validLimits = @(x) isvector(x) && (length(x) == 2);
    addRequired(p, 'f', validSym);
    addOptional(p, 'limits', [-Inf Inf], validLimits);

    parse(p, f, varargin{:});

    Ex(t) = int((p.Results.f(t)^2), t, p.Results.limits);
end
