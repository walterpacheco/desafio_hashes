#Ejercicio 5
meses = %w(Enero Febrero Marzo Abril Mayo)
ventas = [2000, 3000, 1000, 5000, 4000]
h = meses.zip(ventas).to_h

#1.-
h = h.invert

#2.-
max = h.keys.max