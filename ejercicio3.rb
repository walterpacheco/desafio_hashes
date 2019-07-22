#Ejercicio 3
h = { 'x': 1, 'y': 2 }

h['z'] = 3
h[:x] = 5
h.delete :y
puts 'yeeah' if h.key? 'z'
#Asumiendo que solamente hay valores únicos en el hash:
h.invert