function buscaRaiz(f, a, b, l, p)
	if nargin < 4, l = '-'; end
	if nargin < 5, p = 'r.'; end
	% f deve ser escrito na forma @(x) x.^2
	ns=1000;
	zeros=ones(ns,1)';
	x=linspace(a,b,ns);
	plot(x,f(x),l)
	ax=gca;
	ax.XAxisLocation='origin';
	ax.YAxisLocation='left';
	ax.Box='off';
	hold on;
	ys = f(x);
	scinter = find(diff(sign(ys)));
	ninter = numel(scinter);
	xroots = NaN(1,ninter);
	for n = 1:ninter
		xroots(n) = fzero(f,x(scinter(n) + [0 1]));
	end

	if size(xroots)~=0
		plot(xroots,0,p);
	end

	hold off
end
