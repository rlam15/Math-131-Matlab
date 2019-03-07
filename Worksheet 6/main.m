X = [1:100];
Y =  (X.^5)-1; 
x = linspace(min(X)-1, max(X)+1, 100);

result = linterp(X,Y,x);
plot(x, Y, 'ko:', x, linterp(X, Y, x), 'rx:');

function y = linterp(X,Y,x)
p1 = 0;
    for i = 1: numel(X)
        p2 = 1;  
        for j = 1: numel(X)
            if j~=i %Skips the current order if j = i;
                p2 = p2 .* (x-X(j))/(X(i)-X(j)); %add the current order to the previous
            end
        end
        p1 = p1 + Y(i) * p2; % Adds the order multipied by the Y coefficent.
    end
    y = p1;
end