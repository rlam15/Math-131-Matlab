function [result] = myalternatesum(input)

result = 0
for i = 1:input
    i;
    result = result + i*((-1)^i)
end
end

