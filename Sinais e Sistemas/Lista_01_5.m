syms t;
% 1.1-5 Potencia e RMS dos sinais

T = (2 * pi) / (100); % Periodo
xlimits = [0 T];
ylimits = [-15.5 15.5];
subplot(3, 2, 1)
% a) 5+10cos(100t+pi/3)
a(t) = 5 + 10 * cos(100 * t + pi / 3);
answer = SS_power(a, xlimits);
fplot(a(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3a: $$\n$$Px= %s \\qquad RMS= %s$$', latex(vpa(answer,4)), latex(vpa(sqrt(answer),4))), ylimits)

T = 50 * (2 * pi); % Periodo
xlimits = [0 T];
ylimits = [-26.5 26.5];
subplot(3, 2, 2)
% b) 10cos(100i+pi/3)+16sin(150t+pi/5)
b(t) = 10 * cos(100 * t + pi / 3) + 16 * sin(150 * t + pi / 5);
answer = SS_power(b, xlimits);
fplot(b(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3b: $$\n$$Px= %s \\qquad RMS= %s$$', latex(vpa(answer,4)), latex(vpa(sqrt(answer),4))), ylimits)

T = 7 * (2 * pi); % Periodo
xlimits = [0 T];
ylimits = [-12.5 12.5];
subplot(3, 2, 3)
% c) (10 + 2*sin(3 * t)) * cos(10 * t)
c(t) = (10 + 2*sin(3 * t)) * cos(10 * t);
answer = SS_power(c, xlimits);
fplot(c(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3c: $$\n$$Px= %s \\qquad RMS= %s$$', latex(vpa(answer,4)), latex(vpa(sqrt(answer),4))), ylimits)

T = 5 * (2 * pi); % Periodo
xlimits = [0 T];
ylimits = [-10.5 10.5];
subplot(3, 2, 4)
% d) 10 * cos(5 * t) * cos(10 * t)
d(t) = 10 * cos(5 * t) * cos(10 * t);
answer = SS_power(d, xlimits);
fplot(d(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3d: $$\n$$Px= %s \\qquad RMS= %s$$', latex(vpa(answer,4)), latex(vpa(sqrt(answer),4))), ylimits)

T = 5 * (2 * pi); % Periodo
xlimits = [0 T];
ylimits = [-10.5 10.5];
subplot(3, 2, 5)
% e) 10 * sin(5 * t) * cos(10 * t)
e(t) = 10 * sin(5 * t) * cos(10 * t);
answer = SS_power(e, xlimits);
fplot(e(t), xlimits .* [1.05 1.05], 'LineWidth', 1.5)
SetFigureDefaults(sprintf('$$1.1-3e: $$\n$$Px= %s \\qquad RMS= %s$$', latex(vpa(answer,4)), latex(vpa(sqrt(answer),4))), ylimits)

function SetFigureDefaults(plottitle, ylimits)
    title(plottitle, 'Interpreter', 'latex')
    xlabel('t')
    ylim(ylimits)
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    grid on;
end
