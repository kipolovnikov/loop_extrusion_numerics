function f = floops(lambda, h)
%computes f(s, \lambda) evaluating the integrals at each $s$

f = zeros(100*100, 1);

for k = 1:100*100
    s = k*lambda/100;
    f(k) = intgsF(s, lambda, h);
end

end