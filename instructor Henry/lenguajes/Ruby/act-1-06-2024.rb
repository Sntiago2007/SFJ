puts "número de estudiantes:"
n = gets.chomp.to_i

for i in 1..n
  puts "nombre del estudiante:"
  s = gets.chomp

  puts "ingrese las notas entre 1 y 10"

  puts "Nota1:"
  n1 = gets.chomp.to_i

  puts "Nota2:"
  n2 = gets.chomp.to_i

  puts "Nota3:"
  n3 = gets.chomp.to_i

  suma = n1 + n2 + n3
  prom = suma / 3

  if prom > 6
    puts "El estudiante #{s} gano"
  else
    puts "El estudiante #{s} perdio"
  end
end