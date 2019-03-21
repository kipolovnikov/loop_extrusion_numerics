function q = intgsF(s, lambda, h)
%numerically computes the integrals for $f_H(s)$

%Eq.(6)
G = @(x, y) 1./(( 1 - 0.25*((1-x).^(-2*h)).*(((1-y).^(2*h) + (y+1-x).^(2*h) - (abs(x-y)).^(2*h) - abs(y).^(2*h)).^2)).^(3/2));

% exponentially distributed loop sizes
rho = @(x) (1/lambda).*exp(-(1-x).*s./lambda);
el0 = lambda/10000;

% heavy-tail distributed loop sizes; a > 2
% a = 3;
% el0 = lambda/1000;
% rho = @(x) (a-1)*((lambda*(a-2)/(a-1))^(a-1))./(x.^a);


xlim = 1 - el0/s;

fun = @(x,y) s*rho(x).*G(x, y);

ymax = @(x) x;
q1 = integral2(fun,0,max(xlim, 0),0,ymax);

ymin = @(x) x - 1;
q2 = 2*integral2(fun,0,max(xlim, 0),ymin,0);


ymin = @(x) x;
xmin = 1 - 1000;
q3 = integral2(fun,xmin,0,ymin,0);

ymin = @(x) (x - 1);
ymax = @(x) x;
q4 = 2*integral2(fun,xmin,0,ymin,ymax);

q = -1 + s/lambda*(-1 + q1+q2+q3+q4);

end