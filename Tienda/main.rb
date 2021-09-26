puts "Bienvenido al SUPERMERCADO"
carrito_nombres=[]
carrito_precios=[]
puts "*********************************************"
puts "¿Cuál es tu nombre?"
nombre = gets.chomp
puts "*********************************************"
puts "Perfecto #{nombre.capitalize} !!!"
puts "Estos son nuestros productos disponibles:"
puts "*********************************************"
productos={
  'leche' => 50,
  'mermelada' => 120,
  'pan' => 100
}
puts "Leche $50"
puts "Mermelada $120"
puts "Pan $100"


mas_productos = ""

until mas_productos.downcase == "no"
  puts "¿Qué producto va agregar?"
  producto = gets.chomp
  carrito_nombres<< producto
  carrito_precios<< productos[producto]
  puts "Quieres agregar otro producto (si/no)"
  mas_productos = gets.chomp
end

total = 0
carrito_precios.each do |precio|
    total += precio
end

puts "*********************************************"
puts "*********************************************"
puts "Carrito:"

carrito_nombres.each do |nombre|
  puts nombre.capitalize
end

#puts "carrito de productos#{carrito_nombres}"
#puts "valores de productos#{carrito_precios}"
puts "El total de tu compra es: #{total}"