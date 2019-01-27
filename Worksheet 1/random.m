function [graphOne] = random(input)
    graphOne = 0;
    graphTemp = linspace(0,1,input);
for i = 0:input
    graphOne = graphOne + 0.5*((input-1))^2;
    fplot(graphOne);
end
   graphTemp;

end

