function [sol,x,incr,k] = puntofijo(g,x1,precision,maxiter)
%Ejemplo: [sol,x] = puntofijo('cos',0,0.001,100)
 k = 1;
 x = x1;
 incr = precision + 1;
 while incr > precision & k <= maxiter
   x(k+1) = feval(g,x(k));
   incr = abs( x(k+1)-x(k) );
   k = k + 1;
 end
 
 if incr > precision
   sol = [ ];
   disp('Insuficientes interacciones');
 else
   sol = x(end);
 end
%Termina funcion
end

