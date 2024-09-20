puts "escriba el numero de renta"
R = gets.chomp.to_f

if R <= 10
    renta1 = (R * (20 / 100.to_f))
    renta = R - renta1
    puts("El valor final de la renta es: #{renta}$")
elsif R <= 100
    renta1 = (R * (10 / 100.to_f))
    renta = R - renta1
    puts("El valor final de la renta es: #{renta}$")
elsif  R <= 1000
    renta1 = (R * (5 / 100.to_f)) 
    renta = R - renta1
    puts("El valor final de la renta es de: #{renta}$")
else 
    renta1 =  (R * (1 / 100.to_f)) 
    renta = R - renta1
    puts("El valor final de la renta es de: #{renta}$")

end