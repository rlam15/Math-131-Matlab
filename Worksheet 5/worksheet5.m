syms x;
f = @(x) 2*x;
fDuplicate = 2*x;
fPrime = @(x) diff(fDuplicate);

f(5)
fPrime(5)

function p = newtones(f,fp,p0,tol,maxits)
    i = 1;
    while (i <= maxits)
        p = p0 -f(p0)/fPrime(p0);
        if (abs(p-p0) < tol)
            fprint("The Procedure was sucessful. p is: ")
            fprint(p)
        end
    end 
end