
%№1------------------------------------
f =@(x) x^2 * x^(-3*x + 1);
a = 0;
b = 3;
n = [3,4,5,6,8,10,15];
%Uniform
%------------------------------------
%for k = 1:length(n)
%    [x,u] = uniform_grid(f,a,b,n(k));
%    [x1,u1] = Lag_3n(f,x,u,n(k));
%------------------------------------
    %plot(x,u,'g',x1,u1,'b--o');
   % title({'Lagrange, uniform'; n(k)});
    %hold off
    %pause
%end
%------------------------------------
%Chebyshev
%------------------------------------
for k = 1:length(n)
    [x,u] = Cheb_grid(f,a,b,n(k));
    [x1,u1] = Lag_3n_cheb(f,a,b,n(k));
%------------------------------------
    plot(x,u,'g',x1,u1,'b--o');
    title({'Lagrange, uniform'; n(k)});
    hold off
    pause
end
%№2------------------------------------
%f =@(x) asin((sin(x)+sin(3*x)+sin(5*x))/4);
%a = 0;
%b = pi;
%------------------------------------
%for k = 1:length(n)
    %[x,u] = uniform_grid(f,a,b,n(k));
    %[x1,u1,err] = PN_3n(f,x,u,n(k));
%------------------------------------
    %plot(x,u,'g',x1,u1,'b--o');
    %title({'Newtone, uniform'; n(k); err});
    %hold off
    %pause
%end

