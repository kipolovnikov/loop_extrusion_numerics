function f = loops_belan(s, k)
%computes f(s) according to the Sergey's formula for the idel chain 
%and exponentially distributed loop sizes

a = k*hypergeom(k+1, 3/2+k, -k*s)/gamma(k+3/2) + exp(-s*k).*kummerU(1/2, k+1, k*s)/gamma(k);
f = -1 - s + sqrt(pi)*(k^k)*(s.^(k+1)).*hypergeom(k, 1/2+k,-k*s)/gamma(k+1/2)+2*sqrt(pi)*(k^k)*(s.^(k+1)).*a + sqrt(pi)*(k^k)*(s.^(k+1)).*exp(-k*s).*kummerU(1/2, k+2, k*s)/gamma(k);

end