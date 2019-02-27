syms x
f = @(x) x^(1/3);
f(5)
df = diff(f(x),x);
if isempty(symvar(df))
  fPrime = str2func(['@(x) repmat(', char(df), ', size(x))'])
else
  fPrime = matlabFunction(df);
end
fPrime(5)
g1 = newtones(f,fPrime,3,eps(),50);
g2 = secant(f,-1,1,eps(),50);
plot(g1)
hold on
plot(g2)
hold off
title('Newton Vs. Secant for n^(1/3)');
xlabel('X Axis (Iterations)');
ylabel('Y Axis (Root)');
legend('Newton (p0 = 2)','Secant (p0 = -2 p1 = 2)');

function p = newtones(f,fPrime,p0,tol,maxits)
format long;
    i = 1;
    while (i <= maxits)
        p = p0-f(p0)/fPrime(p0);
        if (abs(p-p0) < tol)
            fprintf("The Procedure was sucessful. p is: " + p + "\n");
            g(i) = p;
            break;
        end
        g(i) = p;
%         fprintf("The current value at p is: " + p +  " iteration " + i +"\n");
        i = i+1;
        p0 = p;
    end 
    p = g;
end

function p = secant(f, p0, p1, tol, maxits)
format long;
    i = 2;
    q0 = f(p0);
    q1 = f(p1);
    while (i <= maxits)
        p = p1-(q1*(p1-p0))/(q1-q0);
        if (abs(p-p1) < tol)
            fprintf("The procedure was successful, p is: " + p);
            g(i) = p;
            break;
        end
%         fprintf("We are on iteration " + i + "\n");
        g(i) = p;
        i = i+1;
        p0 = p1;
        q0 = q1;
        p1 = p;
        q1 = f(p);
        if i > maxits
            fprintf("The output failed, we need more than " + i +" iterations");
        end
    end
    p = g;
end
