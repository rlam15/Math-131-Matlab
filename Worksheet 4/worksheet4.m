f = @(x) (x+(2./x))./2;
g = @(x) (x^2) - 2
%The root of these two functions are the same
% p0 is initial approximation
% p0 needs to be between [-2,2] or it will go to infinty
% When p0 = +-1.2, 1.6, g(x) = 1.4087 at maxits = 10

fp(g, 0.609, 10)

function p = fp(g, p0, maxits)
    i = 1;
    while (i <= maxits)
        p = g(p0);
        if(abs(p-p0) <= 0)
           fprintf("We are on iteration:" + i + "\n" + "SOMETHING WENT WRONG");
           break;
        end
        i = i+1;
        p0 = p;  
    end
end
