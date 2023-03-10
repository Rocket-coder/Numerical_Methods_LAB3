function [L] = Lagrange(x,f,z)
%LAGRANGE Summary of this function goes here
%   Detailed explanation goes here
%n = x(end);
n = length(x);
a = 1; b = 1; %(a/b) * f(i)
L = 0;
for k=1:n
    for i=1:n
        if i ~= k
            a = (z - x(i)) * a;
        else
            a = 1 * a;
        end
    end

    for i=1:n
        if i~= k
            b = (x(k) - x(i)) * b;
        else
            b = b * 1;
        end
    end
    L = ((a/b) * f(k)) + L;
end

end

