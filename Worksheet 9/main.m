x = linspace(-5,5,100);
h = 10/99;
f2 = @(x) x.^3; 
f2_exact = 3*x.^2;
forward2 = (f2(x+h)-f(x))/h;
backward2 = (f2(x)-f(x-h))/h;
centered2 = (f2(x+h)-f2(x-h))/(2*h);
forwardError2 = abs(f2_exact-forward2);
backwardError2 = abs(f2_exact-backward2);
centeredError2 = abs(f2_exact-centered2);
semilogy(x,forwardError2,'b-',x, backwardError2,'r-o', x, centeredError2,'g-*');