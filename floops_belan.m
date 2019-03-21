function f = floops_belan()
%computes f(s), s/lambda = 0.01...100, according to the Sergey's formula for the idel chain 
%and exponentially distributed loop sizes

lambda = 1;
f = zeros(100*100, 1);

for k = 1:100*100
    s = k*lambda/100;
    f(k) = loops_belan(s, 1);
end

end