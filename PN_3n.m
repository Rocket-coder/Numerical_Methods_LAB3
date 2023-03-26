function [x1,u1,err] = PN_3n(f,x,u,n)
a = x(1);
b = x(end);
h = abs((b-a)/(3*n));
x1 = ones(3*n+1,1);
u1 = ones(3*n+1,1);
err = 0;
j = 1;
for i = a:h:b
    x1(j) = i;
    u1(j) = PNewtone(x, u, i);
    err = (f(x1(j)) - u1(j)) + err;
    j = j + 1;
end

end

