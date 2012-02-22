class Biseccion {
  
  double f( double x ){
    return(Math.sin(x));
  }

  double biseccion(double x0, double x1){
    double xr = 0;
    double xa = 0;
    double umbral = 0.000000001;
    double error = 1;
    if(f(x0)*f(x1) >= 0)
      System.out.print("ERROR. No hay un cambio de signo en los dos extremos\n");
    xr = x0;
    while(error > umbral){
      xa = xr;
      xr = (x0 + x1) / 2;
      error = Math.abs((xr - xa)/xr);
      if(f(x0) * f(xr) < 0)
        x1 = xr;
      else
        x0 = xr;
    }
    return(xr);
  }

  static void puts(String s){
    System.out.print(s);
  }
  
  public static void main(String arg[]){
    Biseccion b = new Biseccion();
    puts("Metodo de bisección\n");
    puts("Raices (entre 1 y 4) de función sen(x) = ");
    puts(Double.toString(b.biseccion(1.0,4.0)));
    puts("\nAdiós\n");
  }

}
