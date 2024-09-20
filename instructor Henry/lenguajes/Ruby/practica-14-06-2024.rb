puts "escribe el numero del cual quieres ver su tabla"
N = gets.chomp.to_i
puts " "
puts "la tabla del numero #{N} es:"
puts " "

for h in 1..10
    mul = N * h
    puts "#{N} x #{h} = #{mul}"
end
