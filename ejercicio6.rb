#Ejercicio 6
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1
prices = restaurant_menu.values
max = prices.max
restaurant_menu.each{ |dish, price| puts dish if price == max }

#2
min = prices.min
restaurant_menu.each{ |dish, price| puts dish if price == min }

#3
average = prices.to_f / prices.length

#4
dishes = restaurant_menu.keys

#5 RESPONDIDO EN LINEA 5
prices = restaurant_menu.values

#6
restaurant_menu.each { |dish, price| restaurant_menu[dish] = price * 1.19 }

#7
restaurant_menu.each { |dish, price| restaurant_menu[dish] = price * 0.8 if dish.include? ' ' }