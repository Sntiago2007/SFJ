# Bucle while en Ruby

# Estructura básica
while condicion
    # código a ejecutar
    end
  
  # Ejemplo práctico en Ruby
  i = 0
  while i < 5
    puts i
    i += 1
  end
  # Salida: 0, 1, 2, 3, 4
  
  # Bucle do-while en Ruby
  
  # Estructura básica (se usa begin-end while)
  begin
    # código a ejecutar
  end while condicion
  
  # Ejemplo práctico en Ruby
  i = 0
  begin
    puts i
    i += 1
  end while i < 5
  # Salida: 0, 1, 2, 3, 4