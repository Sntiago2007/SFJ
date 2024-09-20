pust "nombre"

n = gets.chomp

pust "apellido"

a = gets.chomp

pust "numero1"

n1 = gets.chomp

pust "numero2"

n2 = gets.chomp

pust "numero3"

n3 = gets.chomp

suma = n1.to_i + n2.to_i + n3.to_i

promedio = suma / 3

puts "Tu nombre es: #{n} #{a}"

puts "Tu promedio es: #{promedio}"
