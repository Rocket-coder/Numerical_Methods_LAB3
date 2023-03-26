function [x1,u1,err] = Lag_3n_cheb(f,x,u,n)
a = x(1);
b = x(end);
x1 = ones(3*n+1,1);
u1 = ones(3*n+1,1);
err = 0;
for k = 1:3*n+1
    x1(k) = ((b+a)/ 2) + ((b-a)/2) * cos(((2*k + 1)/(2*(n+1))) * pi);
    u1(k) = Lagrange(x, u, k);
    %err = (f(x1(k)) - u1(k)) + err;
end

