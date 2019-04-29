f = @(t,y) y - t.^2 + 1;
f_exact = @(t) (t+1)^2-exp(t)/2;
a = 0;
b = 2;
X = linspace(a,b,20);
tspan = [0 2];
alpha = 0.5;

Ns = 2.^(1:20);

% Input: enpoints a & b, interger n, and initial condition alpha
% Output: approximate w to y at the (N+1) values of t

h = (b-a)/n;
t = a;
w = alpha;
% fprintf("The value of t is: " + t);
% fprintf(" The value of w is: " + w + "\n ");

for i=1:numel(Ns)
    n = Ns(i);
    w = w + (h*f(t,w));
    t = a + i*h;
%     fprintf("The value of t is: " + t);
%     fprintf(" The value of w is: " + w + "\n ");
    err(i) = abs(w - f_exact(2));
end

%Graph Making
hs = (tspan(2)-tspan(1)./(Ns)-1);

loglog(X,err,'-*');