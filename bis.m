disp("Metodo de biseccion\n");
x=1:0.001:4;
hold off
plot(x,sin(x));
hold on
plot([1 4],[0 0]);
plot([pi pi],[3 -3]);
hold off
format long
disp("Raices (entre 1 y 4 ) de funcion sin(x) = ");
disp(biseccion(1.0,4.0));
disp("\nAdios\n");

