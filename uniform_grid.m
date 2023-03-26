function [x,u] = uniform_grid(f,a, b, n)
h = abs((b-a)/n);
x = ones(n+1,1);
u = ones(n+1,1);
%i = a;
j = 1;
%while (i <= b)
for i = a:h:b
    x(j) = i;
    u(j) = f(i);
    %i = i + h;
    j = j + 1;
end

end

