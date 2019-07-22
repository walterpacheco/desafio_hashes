#Ejercicio 1
h = {
  claveuno: 10,
  clavedos: 20,
  clavetres: 30
}#Ejercicio 7
inventario = {
  Notebooks: 4,
  PC_Escritorio: 6,
  Routers: 10,
  Impresoras: 6
}

def print_menu
  puts (
'Ingrese una opción:
1) Agregar un producto y su stock al inventario.
2) Eliminar un producto del inventario.
3) Actualizar información de un producto.
4) Mostrar stock total.
5) Mostrar el producto con más stock.
6) Verificar si un producto existe.
7) Salir.')
end

def add_or_update_product(str, inventory)
  prod_array = str.split(',')
  inventory[prod_array.first.to_sym] = prod_array.last.to_i
end

def delete_product(product, inventory)
  inventory.delete(product.to_sym)
end

def show_stock(inventory)
  puts inventory.values.sum
end

def show_most_stock(inventory)
  max = inventory.values.max
  inventory.each { |prod, stock| puts "#{prod}: #{stock}" if stock == max }
end

def check_existence(product, inventory)
  puts inventory.has_key?(product.to_sym) ? "El producto #{product} está en el inventario." : "El producto #{product} no está en inventario."
end

ask = true
while ask
  print_menu
  action = gets.to_i
  if action == 1
    puts 'Ingrese el nombre del producto y su stock (separados por una coma):'
    add_or_update_product(gets.chomp, inventario)
  elsif action == 2
    puts 'Ingrese el nombre del producto a eliminar:'
    delete_product(gets.chomp, inventario)
  elsif action == 3
    puts 'Ingrese el nombre del producto y su stock (separados por una coma):'
    add_or_update_product(gets.chomp, inventario)
  elsif action == 4
    show_stock(inventario)
  elsif action == 5
    show_most_stock(inventario)
  elsif action == 6
    puts 'Ingrese el nombre del producto a verificar:'
    check_existence(gets.chomp, inventario)
  elsif action == 7
    ask = false
    puts 'Adios!'
  else
    puts 'Opción inválida.'
  end
end