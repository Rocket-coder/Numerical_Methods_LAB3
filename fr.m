function [fr] = fr(x,f,n)
fr = 0;
b = 1;
for i = 1:n
    a = f(i);
    for j = 1:n
        if i ~= j
            b = (x(i) - x(j)) * b;
        else
            b = b * 1;
        end
    end

    fr = (a / b) + fr;
    b = 1;

end
end

