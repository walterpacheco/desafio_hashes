#Ejercicio 2
productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750 }

#1.-
productos.each { |producto, valor| puts producto }

#2.-
productos['cereal'] = 2200

#3.-
productos['bebida'] = 2000

#4.-
array_productos = productos.to_a

#5.-
productos.delete 'galletas'