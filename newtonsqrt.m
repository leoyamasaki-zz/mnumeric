function r = newtonsqrt(x,delta,maxit)

if x<0
  error ('No funciona para numeros negativos\n')
end
if nargin < 2
 delta = 5.0e-6;
end
if nargin < 3
 maxit = 25;
end

r = x;
rold = 2*r;
it = 0;

while abs(rold - r) / rold > delta & it < maxit
  rold = r;
  r = 0.5 * (rold + x / rold);
  it = it + 1;
end

end
