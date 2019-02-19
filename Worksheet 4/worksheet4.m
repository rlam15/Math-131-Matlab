f = @(x) (x+(2./x))./2;
g = @(x) (x^2) - 2
%The root of these two functions are the same

%p0 is initial approximation
fp(g, 1, 50)

function p = fp(g, p0, maxits)
    i = 1;
    while (i < maxits)
        p = g(p0);
        p
        if(abs(p-p0) <= 0)
           fprintf("SOMETHING WENT WRONG");
        end
        i = i+1;
        p0 = p;  
    end
    
end