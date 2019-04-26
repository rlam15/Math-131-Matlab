%Number 1B
f = @(x) tan(x);
a = 1;
b = 3;
tol = 0.0002;
maxits = 20;

assert(sign(f(a)) ~= sign(f(b)));
assert(a<b);
assert(~isinf(a) && ~isinf(b));

bisection(f,a,b,tol,maxits, 'iter')
bisection(f,a,b,tol,maxits, 'plot')

%1.570
% Similar to number 1, the tol
% has to be fairly low to get
% an accurate reading. 1.570 is
% about the root. Takes about 10
% iterations

function result = bisection(f, a, b, tol, maxits, iter)
% f is function
% a,b is the interval
% tol is the tolerance before we encounter an error (27)
% maxits is the number of ints allowed
    
    %fzero(f, [a b]);
    %fzero(f, [a b], optimset('Display','iter'))
    %fzero(f, [a b], optimset('PlotFcns', @optimplotfval))
    
    if (f(a) == 0)
        result = a;
        return;
    elseif f(b) == 0
        result = b;
        return;
    end
    
    x = 0;
    y = 0;
    
    for i=1:maxits
        fprintf("We are at interation "+ i + "\n");
        c = (a+b)/2;
        x(i) = i;
        y(i) = c;
        if f(c) == 0 || (b-a)/2 < tol
           result = c;
           return;
        end
        if sign(f(c)) ~= sign(f(a))
            %print(root if left of the subinterval)
            b = c; %a stays unchanged
        else 
            a = c; %b stays unchanged
        end
            
        result = c;
    end
        if ((b-a)/2 > tol)
            fprintf("We're going to need more iterations!")
        end
        
        scatter(x, y)
        
end