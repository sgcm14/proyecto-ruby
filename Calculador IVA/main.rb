#saludar al usuario
# donde guardamos los datos q nos manda el usuario
#creamos un tipo de dato o un contenedor q guarde ivas
#pregunto al usuario de q pais es
#guardo el pais del usuario
#acceder al valor del iva
#bucle q pregunte si quiere agregar precio
#le mandamos los precios al contenedor
#le preguntamos al usuario si quiere agregar otro producto
#cuando el usuario no quiera agregr mas productos
#le devolvemos el total sin iva
#le devolvemos el total con iva
puts "Bienvenido al calculador de IVA"

precios_guardados= []

ivas={
  'arg' => 1.21,
  'es' => 2
}
puts "De q pais eres?(arg/es)"

pais_seleccionado = gets.chomp

until pais_seleccionado == "arg" || pais_seleccionado == "es"
puts "Pais incorrecto, ingresa (arg/es)"
pais_seleccionado = gets.chomp
end

valor_iva= ivas[pais_seleccionado]

mas_items = ""

until mas_items.downcase == "no"
  puts "Que precio tiene el producto"
  nuevo_precio = gets.chomp.to_i
  #precios_guardados.push(nuevo_precio)
  precios_guardados<< nuevo_precio
  puts "Queres agregar otro producto (si/no)"
  mas_items = gets.chomp
end

puts ""
puts ""
total = 0

precios_guardados.each do |precio|
    total += precio
end

puts "Total sin IVA"
puts "--------------"
puts "#{total}"

total_con_iva = total*valor_iva
puts "Total con IVA"
puts "--------------"
puts "#{total_con_iva}"