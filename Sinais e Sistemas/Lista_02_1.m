% 1.2-1 Deslocamento de sinais
syms t;

xlimits = [-1 25];
ylimits = [-1.5 1.5];

subplot(3, 2, 1)
% x)
x(t) = (1.5 * (t - 12) / 9) * (heaviside(t - 6) - heaviside(t - 15));
x(t) = x(t) + (-0.5 * (t - 24) / 9) * (heaviside(t - 15) - heaviside(t - 24));
fplot(x(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1: x(t)$$'), ylimits)

xlimits = fliplr(- [-1 25]);
subplot(3, 2, 2)
% a)
a(t) = x(-t);
fplot(a(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1a: x(-t)$$'), ylimits)

xlimits = [-1 25]-6;
subplot(3, 2, 3)
% b)
b(t) = x(t + 6);
fplot(b(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1b: x(t + 6)$$'), ylimits)

xlimits = [-1 25] ./ 3;
subplot(3, 2, 4)
% c)
c(t) = x(3 * t);
fplot(c(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1c: x(3t)$$'), ylimits)

xlimits = [-1 25] .* 2;
subplot(3, 2, 5)
% d)
d(t) = x(t / 2);
fplot(d(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1d: x(t/2)$$'), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle, 'Interpreter', 'latex')
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
