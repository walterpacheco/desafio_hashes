#Ejercicio 4
personas = ['Carolina', 'Alejandro', 'María Jesús', 'Valentín']
edades = [32, 28, 41, 19]

#1.-
personas_hash = personas.zip(edades).to_h

#2.-
def promedio_edades(hash)
  hash.values.sum / hash.length
end