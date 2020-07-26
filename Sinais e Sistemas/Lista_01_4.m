syms t;
% 1.1-4 Potencia e RMS dos sinais

xlimits = [-2 2];
ylimits = [-8.5 8.5];
subplot(2, 2, 1)
% t^3
f(t) = t^3;
enun(t) = piecewise(-2 <= t <= 2, f(t), t < (-2), f(t + 4), t > 2, f(t - 4));
answer = SS_power(enun, xlimits);
fplot(enun(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3: $$\n$$Px= %s \\qquad RMS= %s$$', latex(answer), latex(sqrt(answer))), ylimits)

ylimits = [-2.5 2.5];
subplot(2, 2, 2)
% a) -t
f(t) = -t;
a(t) = piecewise(-2 <= t <= 2, f(t), t < (-2), f(t + 4), t > 2, f(t - 4));
answer = SS_power(a, xlimits);
fplot(a(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3a: $$\n$$Px= %s \\qquad RMS= %s$$', latex(answer), latex(sqrt(answer))), ylimits)

ylimits = [-4.5 4.5];
subplot(2, 2, 3)
% b) 2t
f(t) = 2 * t;
b(t) = piecewise(-2 <= t <= 2, f(t), t < (-2), f(t + 4), t > 2, f(t - 4));
answer = SS_power(b, xlimits);
fplot(b(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3b: $$\n$$Px= %s \\qquad RMS= %s$$', latex(answer), latex(sqrt(answer))), ylimits)

syms c;
subplot(2, 2, 4)
% c) ct
fc(t) = c * t;
answer = SS_power(fc, xlimits);
ezsurf(fc, xlimits)
title(sprintf('$$1.1-3c: $$\n$$Px= %s \\qquad RMS= %s$$', latex(answer), latex(sqrt(answer))), 'Interpreter', 'latex')

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle, 'Interpreter', 'latex')
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
