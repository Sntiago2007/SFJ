## Clases y Tipos de Clases en Ruby

### Clases en Ruby

Clase: En Ruby, una clase es una plantilla para crear objetos. Define un conjunto de atributos y métodos que los objetos de la clase tendrán.

class MiClase
  def initialize(atributo1, atributo2)
    @atributo1 = atributo1
    @atributo2 = atributo2
  end

  def metodo
    "#{@atributo1} #{@atributo2}"
  end
end
Tipos de Clases
Clases Base (Superclase): Son clases de las que otras clases pueden heredar. Proveen atributos y métodos que pueden ser utilizados o sobrescritos por las subclases.


class ClaseBase
  def metodo_base
    "Método en la clase base"
  end
end
Clases Derivadas (Subclases): Son clases que heredan de una o más clases base. Pueden sobrescribir o extender las funcionalidades de las clases base.


class ClaseDerivada < ClaseBase
  def metodo_derivado
    "Método en la clase derivada"
  end
end
Módulos (Modules): Los módulos en Ruby son un conjunto de métodos y constantes que pueden ser incluidos en las clases. Sirven para compartir funcionalidad entre múltiples clases.


module ModuloEjemplo
  def metodo_modulo
    "Método en el módulo"
  end
end

class ClaseConModulo
  include ModuloEjemplo

  def metodo_clase
    "Método en la clase con módulo"
  end
end
Clases Singleton: Son clases que solo tienen una instancia. Se utilizan para definir métodos que pertenecen a la clase en lugar de a las instancias de la clase.


class MiClase
  def self.metodo_singleton
    "Método singleton"
  end
end
Clases Anidadas: Son clases definidas dentro de otra clase. Su uso puede ser para encapsular la funcionalidad específica y relacionada.


class ClaseExterna
  class ClaseInterna
    def metodo_interno
      "Método en la clase interna"
    end
  end
end