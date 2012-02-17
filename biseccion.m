function xr = biseccion(f, a, b, umbral = 0.000001)
  if feval(f, a) * feval(f, b) >= 0
    error("No hay cambio de signo entre los extremos del intervalo.");
  end
  error = 1;
  xr = a;
  while error > umbral
    xa = xr;
    xr = (a + b) / 2;
    error = abs((xr - xa) / xr);
    if feval(f, a) * feval(f, xr) < 0
      b = xr;
    else
     a = xr;
    end
  end
end
