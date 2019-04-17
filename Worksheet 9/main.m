f = @(x) 5*x.^3 + 2*x.^2 + 3*x;
X = 1:4;
Y = f(X);
y = num_diff(X,Y,2,3);

function a = linterp_poly(X, Y)
  a = zeros(1,numel(X));
  for i = 1:numel(X)
      aa = poly(X([1:i-1 i+1:end]));
      a = a + Y(i) * aa / polyval(aa, X(i));
  end
end

function y = num_diff(X,Y,x,d)
    p = linterp_poly(X,Y);
    for i = 1:d
        p = polyder(p);
    end
    y = polyval(p,x);
end