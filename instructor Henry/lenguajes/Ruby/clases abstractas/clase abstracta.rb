# Clase abstacta en Ruby

#Ruby no tiene una palabra clave específica para definir clases abstractas, pero puedes simular una clase abstracta utilizando
#raise en el método que debería ser implementado por las subclases.

class Animal
    def emitir_sonido
      raise NotImplementedError, 'se debe implementar este metodo'
    end
  
    def dormir
      puts "Zzz"
    end
  end
  
  class Dog < Animal
    def emitir_sonido
      puts "Woof!"
    end
  end
  
  dog = Dog.new
  dog.emitir_sonido  # Woof!
  dog.dormir       # Zzz
  