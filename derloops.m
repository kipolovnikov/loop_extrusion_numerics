function der = derloops(f, d, lambda, h)
%computes the log derivative of the probability of contact Eq.(9) from f(s, \lambda).


%derivative \frac{\partial f}{\partial s}
dr = zeros(length(f)-1, 1);
for i = 1:length(f)-1
    dr(i) = (f(i+1) - f(i))*100/lambda;
end

der = zeros(length(f)-1, 1);

for k = 1:length(f)-1
    s = k*lambda/100;
    der(k) = -3*h + dr(k)*s*lambda/d;
end


%numerical errors correction
for i = 1:10
    der1 = der(2000:length(der));
    [~, i1] = max(der1);
    [~, i2] = min(der1);
    der(i1+2000-1) = der(i1+2000-2);
    der(i2+2000-1) = der(i2+2000-2);
end

end