function p = ploops(f, d, lambda, h)
%computes the probability of contact Eq.(8) from f(s, \lambda).

p = zeros(100*100, 1);

for k = 1:100*100
    s = k*lambda/100;
    p(k) = (1 + f(k)*lambda/d)/(s^(3*h));
end

end