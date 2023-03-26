function [x,u] = Cheb_grid(f,a,b,n)
%CHEB_GRID Summary of this function goes here
%   Detailed explanation goes here
x = ones(n+1,1);
u = ones(n+1,1);

for k = 1:n+1
    x(k) = ((b+a)/ 2) + ((b-a)/2) * cos(((2*k + 1)/(2*(n+1))) * pi);
    u(k) = f(x(k));
end
end
