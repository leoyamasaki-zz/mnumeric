function xr = biseccion(x0, x1, umbral = 0.0000000001)
  if f(x0) * f(x1) >= 0
    error("No hay cambio de signo entre los extremos del intervalo.");
  end
  error = 1;
  xr = x0;
  while error > umbral
    xa = xr;
    xr = (x0 + x1) / 2;
    error = abs((xr - xa) / xr);
    if f(x0) * f(xr) < 0
      x1 = xr;
    else
      x0 = xr;
    end
  end
end

function y = f(x)
  y = sin(x);
end
