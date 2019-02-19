f = @(x) (x+(2./x))./2;
g = @(x) (x^2) - 2
%The root of these two functions are the same

%p0 is initial approximation
fp()

function p = fp(g, p0, maxits)
    i = 1;
    while (i < maxits)
        p = g(p0);
        if(abs(p-p0) < 1)
           print("Value of P RN is:" + p);
        end
        i = i+1;
        p0 = p;  
    end
    
end