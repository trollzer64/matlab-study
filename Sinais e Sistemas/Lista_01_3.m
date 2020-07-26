syms t;
% 1.1-3 Energia dos sinais

xlimits = [0 2];
ylimits = [-2.5 2.5];
figure('Name', 'Letra a)');
subplot(4, 2, 1)
% a) x
ax(t) = heaviside(t) - heaviside(t - 2);
answer = SS_energy(ax, xlimits);
fplot(ax(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3a (x): %s', char(answer)), ylimits)

subplot(4, 2, 2)
% a) y
ay(t) = heaviside(t) - 2 * heaviside(t - 1) + heaviside(t - 2);
answer = SS_energy(ay, xlimits);
fplot(ay(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3a (y): %s', char(answer)), ylimits)

subplot(4, 2, 3)
% a) x + y
a1(t) = ax(t) + ay(t);
answer = SS_energy(a1, xlimits);
fplot(a1(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3a (x + y): %s', char(answer)), ylimits)

subplot(4, 2, 4)
% a) x - y
a2(t) = ax(t) - ay(t);
answer = SS_energy(a2, xlimits);
fplot(a2(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3a (x - y): %s', char(answer)), ylimits)

% ================== %
xlimits = [0 2*pi];
subplot(4, 2, 5)
% b) x
bx(t) = sin(t) * (heaviside(t) - heaviside(t - 2 * pi));
answer = SS_energy(bx, xlimits);
fplot(bx(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3b (x): %s', char(answer)), ylimits)

subplot(4, 2, 6)
% b) y
by(t) = heaviside(t) - heaviside(t - 2 * pi);
answer = SS_energy(by, xlimits);
fplot(by(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3b (y): %s', char(answer)), ylimits)

subplot(4, 2, 7)
% b) x + y
b1(t) = bx(t) + by(t);
answer = SS_energy(b1, xlimits);
fplot(b1(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3b (x + y): %s', char(answer)), ylimits)

subplot(4, 2, 8)
% b) x - y
b2(t) = bx(t) - by(t);
answer = SS_energy(b2, xlimits);
fplot(b2(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3b (x - y): %s', char(answer)), ylimits)

figure('Name', 'Letra b)');
% ================== %
xlimits = [0 pi];
ylimits = [-2.5 2.5];
subplot(2, 2, 1)
% c) x
cx(t) = sin(t) * (heaviside(t) - heaviside(t - pi));
answer = SS_energy(cx, xlimits);
fplot(cx(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3c (x): %s', char(answer)), ylimits)

subplot(2, 2, 2)
% c) y
cy(t) = heaviside(t) - heaviside(t - pi);
answer = SS_energy(by, xlimits);
fplot(cy(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3c (y): %s', char(answer)), ylimits)

subplot(2, 2, 3)
% c) x + y
c1(t) = cx(t) + cy(t);
answer = SS_energy(c1, xlimits);
fplot(c1(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3c (x + y): %s', char(answer)), ylimits)

subplot(2, 2, 4)
% c) x - y
c2(t) = cx(t) - cy(t);
answer = SS_energy(c2, xlimits);
fplot(c2(t), xlimits + [-0.5 0.5], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('1.1-3c (x - y): %s', char(answer)), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle)
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
