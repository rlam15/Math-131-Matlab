f = @(x) (x.^3)+(4*x.^2)-10;
a = 1;
b = 2;

assert(sign(f(a)) ~= sign(f(b)));
assert(a<b)
assert(~isinf(a) && ~isinf(b));

% format long;
bisection(f,1,2,5,15)


function result = bisection(f, a, b, tol, maxits)
    
    
    if (f(a) == 0)
        result = a;
        return;
    elseif f(b) == 0
        result = b
        return;
    end
    
    for i=1:maxits
        c = (a+b)/2;
        if f(c) == 0 || (b-a)/2 >= tol
           result = c;
           return;
        end
        if sign(f(c)) ~= sign(f(a))
            %print(root if left of the subinterval)
            b = c; %a stays unchanged
        else 
            a = c; %b stays unchanged
        end
    end
end


