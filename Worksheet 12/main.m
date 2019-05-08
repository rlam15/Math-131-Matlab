% Problem 01A
X = 1:100;
A = rand(100);
x = rand(100,1);
b = A * x;
result = my_linsolve(A,b);
temp = abs(result - A);
result2 = linsolve(A,b);

% Graph Making
loglog(result);
title('Problem 01');
legend('myLineSolve Line','matlabLineSolve Line');
xlabel('Iterations');
ylabel('Error');

% Problem 02
clear
% Problem 01B
%A=[ 1,-2,4;8,-3,2;-1,10,2]
%b= [6 ; 2 ; 4 ]
A=[ 2 1 -1; -3 -1 2; -2 1 2]
b= [8 ; -11 ; -3 ]
partialPivoting(A,b)

function x = my_linsolve(A,b)
n = size(A,1);
A = [A,b];

%introduce zeros below diagonaol
for j = 1:n
    for i = j+1:n
    A(i,:) = A(i,:) - A(i,j)/A(j,j) * A(j,:);
    A(i,j) = 0;
    end
end

%Introduce zeros above diagonal
for j=n:-1:1
    for i=1:j-1
        A(i,:) = A(i,:) - A(i,j)/A(j,j)*A(j,:);
        A(i,j) = 0;
    end
end

%solve diagonal linear systems
x = A(1:n,n+1) ./ diag(A(1:n,1:n));
end

function result = partialPivoting(A,b)
n=size(A,1);
A=[A,b];
for i=1:n-1
    for j=i+1:n
        if abs(A(j,i))>abs(A(i,i))
            Swap=A(i,:);
            A(i,:)=A(j,:);
            A(j,:)=Swap;
        end
    end
    for j=i+1:n
        m=A(j,i)/A(i,i);
        for k=i+1:n+1
            A(j,k)=A(j,k)-m*A(i,k);
        end
    end
end
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(A(i,n+1)-sum)/A(i,i);
end
transpose(x);
end



