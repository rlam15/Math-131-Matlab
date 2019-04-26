p = @(x) polyval([1 0 0 0 0 -1],x);
X = linspace(-2,2,6);
Y = p(X);
x = -1.7;
error = abs(p(x)-linterp(X,Y,x))

function y = linterp(X,Y,x)
y = 0;
for i = 1:numel(X)
    yy = Y(i);
    for j = 1:numel(X)
        if i~=j
            yy = yy * (x-X(j))/(X(i)-X(j));
        end
    end
    y = y+yy;
end
end