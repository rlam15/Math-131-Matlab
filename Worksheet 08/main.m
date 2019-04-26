f = @(x) (1./(1+25*x.^2));
x1 = linspace(-1,1,30);
s{1}='Exact Function';
n = (10:10:40);

for i = 1:length(n)
    x = linspace(-1,1,n(i));
    y = f(x);
    for j = 1:length(x1)
        y1(j) = interp1(x,y,x1(j));
    end
    hold on;
    plot(x1,y1);
    ylim([0,1]);
    s{i+1} = sprintf('%d points',n(i));
    legend(s);
end

function y = linterp_bary_graph(X, Y, x)
% The function linterp_bary is the same as lagrange except better because
% it uses the barycentric weights instead of interpolation of arrays
% X = An array of real numbers that describe the formula.
% Y = An array of the evaluation of the polynomial.
% x = An array of real numbers besides the ones in X.

n = length(x);
y_arr = ones(1,n);

for o = 1:n
    n = length(X);
    w = ones(1,n);
for i = 1:n
    for j = 1:n
        if i~=j
            w(i) = w(i) * (X(i)-X(j));
        end
    end
end
w = 1./w;
yy = w ./(x(o)-X);

y_num = (yy .* Y(X));

yyy = sum(y_num);
y_arr(o) = yyy/sum(yy);
end
y = y_arr;
end

function y = linterp(X,Y,x)
y = 0;
for i = 1:numel(X)
    yy = Y(i);
    for j = 1:numel(X)
        if i~=j
            yy = yy .* (x-X(j))/(X(i)-X(j));
        end
    end
    y = y+yy;
end
end