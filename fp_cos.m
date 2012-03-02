clear all;close all;clc;
disp("Probaremos el metodo de punto fijo")

function y = f(x)
y = cos(x);
end

x=-0.2:0.001:1.2;


hold off;
disp("Dibujando funcion");
plot(x,f(x));
grid on;
hold on;
pause;
disp("Dibujando y=x");
plot(x,x);
pause;

x1 = 0;
precision = 0.001;
maxiter = 100;

[sol,x,incr,k] = puntofijo("f",x1,precision,maxiter);

printf("Punto fijo encontrado en %i interacciones\n",k);

disp("Graficación");

for i=1:k-1
 plot([x(i) x(i)  ],[x(i) x(i+1)],'r');
% pause;
 plot([x(i) x(i+1)],[x(i+1) x(i+1)],'r');
% pause;
 printf("x(%i)=%f\n",i,x(i));
end
hold off;
printf("Un punto fijo en %f\n",sol);

