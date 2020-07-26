% 1.2-2 Deslocamento de sinais
syms t;

xlimits = [-5 3];
ylimits = [-1 5];

subplot(3, 2, 1)
% x)
x(t) = (-t) * (heaviside(t + 4) - heaviside(t));
x(t) = x(t) + t * (heaviside(t) - heaviside(t - 2));
fplot(x(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1: x(t)$$'), ylimits)

xlimits = [-5 3]+4;
subplot(3, 2, 2)
% a)
a(t) = x(t - 4);
fplot(a(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1a: x(t-4)$$'), ylimits)

xlimits = [-5 3] .* 1.5;
subplot(3, 2, 3)
% b)
b(t) = x(t / 1.5);
fplot(b(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1b: x(t/1.5)$$'), ylimits)

xlimits = fliplr(- [-5 3]);
subplot(3, 2, 4)
% c)
c(t) = x(-t);
fplot(c(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1c: x(-t)$$'), ylimits)

xlimits = ([-5 3] + 4) ./ 2;
subplot(3, 2, 5)
% d)
d(t) = x(2 * t - 4);
fplot(d(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1d: x(2t-4)$$'), ylimits)

xlimits = fliplr(- [-5 3]+2);
subplot(3, 2, 6)
% d)
d(t) = x(2 - t);
fplot(d(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-1d: x(2-t)$$'), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle, 'Interpreter', 'latex')
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
