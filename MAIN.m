f =@(x) x^2 * x^(-3*x + 1);
a = 0;
b = 3;
n = [3,4,5,6,8,10,15];
for k = 1:length(n)
    [x,u] = uniform_grid(f,a,b,n(k));
    [x1,u1] = Lag_3n(x,u,n(k));

    plot(x,u,'g',x1,u1,'b--o');
    title('Lagrange, uniform, n =', n(k));
    hold off
    pause
end