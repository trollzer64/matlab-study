syms t;
% 1.1-2 Energia dos sinais

xlimits = [-1 2];
ylimits = [-2 3];
subplot(2, 3, 1)
% a)
a(t) = t*(heaviside(t)-heaviside(t-1));
answer = SS_energy(a, xlimits);
fplot(a(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-2a: %s', char(answer)), ylimits)

subplot(2, 3, 2)
% b)
b(t) = a(-t);
answer = SS_energy(b, xlimits);
fplot(b(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-2b: %s', char(answer)), ylimits)

subplot(2, 3, 3)
% c)
c(t) = -a(t);
answer = SS_energy(c, xlimits);
fplot(c(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-2c: %s', char(answer)), ylimits)

subplot(2, 3, 4)
% d)
d(t) = a(t-1);
answer = SS_energy(d, xlimits);
fplot(d(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-2c: %s', char(answer)), ylimits)

subplot(2, 3, 5)
% e)
e(t) = 2*a(t);
answer = SS_energy(e, xlimits);
fplot(e(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-2c: %s', char(answer)), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle)
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end