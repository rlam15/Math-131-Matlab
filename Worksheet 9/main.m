f = @(x) sin(x);
h = @(x) 1/10^x;

centered = @(x,h) (f(x+h)-f(x-h))/2*h;

for i=1:15
    graph(i) = centered(1,h(i));
end
% As h grows smaller and smaller, the function has a more accurate reading.
% Approaches 0
plot(graph);


% plot(X,forward(X,h),'-',X,backward(X,h),'^',X,forward(X,h),'g*');
% legend('Forward Diff Formula','Backward Diff Formula', 'Centered Diff Formula');