f = @(x) sin(x);
a = 1;
b = 4;
tol = 0.00002;
maxits = 20;

assert(sign(f(a)) ~= sign(f(b)));
assert(a<b);
assert(~isinf(a) && ~isinf(b));

bisection(f,a,b,tol,maxits)
function result = bisection(f, a, b, tol, maxits)
% f is function
% a,b is the interval
% tol is the tolerance before we encounter an error (27)
% maxits is the number of ints allowed
    
    if (f(a) == 0)
        result = a;
        return;
    elseif f(b) == 0
        result = b;
        return;
    end
    
    for i=1:maxits
        fprintf("We are at interation "+ i + "\n");
        c = (a+b)/2;
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
end