aa=1;
bb=10;
n=9;
fun = @(t) 2/ (pi+3*t)^(1/2);
z=2;
fun(z)
Spline(fun,aa,bb,n,z)