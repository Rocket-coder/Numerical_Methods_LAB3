function [x1,u1] = Lag_3n(x, u, n)
a = x(1);
b = x(end);
h = abs((b-a)/(3*n));
x1 = ones(3*n+1,1);
u1 = ones(3*n+1,1);
%i = a;
j = 1;
%while (i <= b)
for i = a:h:b
    x1(j) = i;
    u1(j) = Lagrange(x, u, i);
    %i = i + h;
    j = j + 1;
end

