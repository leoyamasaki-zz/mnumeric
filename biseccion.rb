#!/usr/bin/ruby
# Programa de biseccion 

def f(x)
   Math.sin(x)
end

def biseccion(x0,x1)
  if f(x0) * f(x1) >= 0
    puts "ERROR. No hay un cambio de signo en los dos extremos\n"
    exit
  end
  umbral = 0.000000001
  error = 1
  xr = x0
  while error > umbral
     xa = xr
     xr = (x0 + x1) / 2
     error = ((xr - xa)/xr).abs
     if f(x0) * f(xr) < 0
       x1 = xr
     else
       x0 = xr
     end
  end
  xr
end

puts "Metodo de bisección\n"
puts "Raices (entre 1 y 4 ) de función sin(x) = " + biseccion(1.0,4.0).to_s + "\n" 
puts "Adiós\n"
exit



