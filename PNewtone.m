function [P] = PNewtone(x,f,z)
n = length(x);
a = 1;
sum = 0;
for i = 2:n
    for k = 1:i-1
        a = (z - x(k)) * a;
    end
    sum = (a * fr(x,f,i)) + sum;
    a = 1;
end
P = f(1) + sum;
end

