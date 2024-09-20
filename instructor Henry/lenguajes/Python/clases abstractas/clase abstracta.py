# Clases en Python

#En Python, las clases abstractas se definen utilizando el módulo abc (Abstract Base Classes). 
#Se usa el decorador @abstractmethod para definir métodos abstractos.

from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def emitir_sonido(self):
        pass

    def dormir(self):
        print("Zzz")

class Dog(Animal):
    def emitir_sonido(self):
        print("Woof!")

dog = Dog()
dog.emitir_sonido()  # Woof!
dog.dormir()       # Zzz
