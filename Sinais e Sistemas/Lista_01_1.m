syms t;
% 1.1-1 Energia dos sinais

xlimits = [0 6];
ylimits = [-3 3];
subplot(2, 2, 1)
% a)
a(t) = heaviside(t) - 2 * heaviside(t - 2) + heaviside(t - 3);
answer = SS_energy(a, xlimits);
fplot(a(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-1a: %s', char(answer)), ylimits)

subplot(2, 2, 2)
% b)
b(t) = -a(t);
answer = SS_energy(b, xlimits);
fplot(b(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-1b: %s', char(answer)), ylimits)

subplot(2, 2, 3)
% c)
c(t) = a(t-3);
answer = SS_energy(c, xlimits);
fplot(c(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-1c: %s', char(answer)), ylimits)

subplot(2, 2, 4)
% d)
d(t) = a(t)*2;
answer = SS_energy(d, xlimits);
fplot(d(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-1c: %s', char(answer)), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle)
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
