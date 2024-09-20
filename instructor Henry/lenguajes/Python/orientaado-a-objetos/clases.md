## Clases

En la programación orientada a objetos (OOP) en Python, una clase es una plantilla para crear objetos (instancias de la clase). Define un conjunto de atributos y métodos que los objetos creados a partir de la clase tendrán. A continuación, se presentan las definiciones resumidas de las clases y los tipos de clases en Python:

### Clases en Python

- **Clase**: Es una definición de un tipo de objeto. Incluye atributos (variables) y métodos (funciones) que definen el comportamiento de los objetos de la clase.
  ```python
  class MiClase:
      def __init__(self, atributo1, atributo2):
          self.atributo1 = atributo1
          self.atributo2 = atributo2

      def metodo(self):
          return self.atributo1 + self.atributo2
  ```

### Tipos de Clases

1. **Clases Base (Padre)**: Son clases que otras clases pueden heredar. Proveen atributos y métodos que pueden ser utilizados o sobrescritos por las clases derivadas.
   ```python
   class ClaseBase:
       def metodo_base(self):
           return "Método en la clase base"
   ```

2. **Clases Derivadas (Hijas)**: Son clases que heredan de una o más clases base. Pueden sobrescribir o extender las funcionalidades de las clases base.
   ```python
   class ClaseDerivada(ClaseBase):
       def metodo_derivado(self):
           return "Método en la clase derivada"
   ```

3. **Clases Abstractas**: Son clases que no se pueden instanciar y están diseñadas para ser heredadas. Pueden incluir métodos abstractos que deben ser implementados por las clases derivadas. En Python, se utilizan con el módulo `abc`.
   ```python
   from abc import ABC, abstractmethod

   class ClaseAbstracta(ABC):
       @abstractmethod
       def metodo_abstracto(self):
           pass
   ```

4. **Clases de Datos**: Son clases diseñadas principalmente para almacenar datos. En Python 3.7 y versiones posteriores, se pueden crear usando el decorador `@dataclass`.
   ```python
   from dataclasses import dataclass

   @dataclass
   class ClaseDeDatos:
       atributo1: int
       atributo2: str
   ```

5. **Clases Internas (Anidadas)**: Son clases definidas dentro de otra clase. Su uso puede ser para encapsular la funcionalidad específica y relacionada.
   ```python
   class ClaseExterna:
       class ClaseInterna:
           def metodo_interno(self):
               return "Método en la clase interna"
   ```

6. **Clases Metaclases**: Son clases que definen el comportamiento de otras clases. Se utilizan para modificar dinámicamente la creación y el comportamiento de clases.
   ```python
   class MiMetaClase(type):
       def __new__(cls, nombre, bases, diccionario):
           return super().__new__(cls, nombre, bases, diccionario)

   class ClaseConMetaClase(metaclass=MiMetaClase):
       pass
   ```
