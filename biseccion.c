/* Metodo de bisección */
/* Compilarlo con: cc -lm -o biseccion biseccion.c */
/* Ejecutalo con ./biseccion */

#include <stdio.h>
#include <math.h>

double f( double x ){
  return(sin(x));
}

double biseccion(double x0, double x1){
  double xr = 0;
  double xa = 0;
  double umbral = 0.000000001;
  double error = 1;
  if(f(x0)*f(x1) >= 0){
    printf("ERROR. No hay un cambio de signo en los dos extremos\n");
    return(0);
  }
  xr = x0;
  while(error > umbral){
    xa = xr;
    xr = (x0 + x1) / 2;
    error = abs((xr - xa)/xr);
    if(f(x0) * f(xr) < 0)
      x1 = xr;
    else
      x0 = xr;
  }
  return(xr);
}
  
int main(int argc, char * argv[]){
  printf("Metodo de bisección\n");
  printf("Raices (entre 1 y 4) de función sen(x) = ");
  printf("%2.9f",biseccion(1.0,4.0));
  printf("\nAdiós\n");
}

