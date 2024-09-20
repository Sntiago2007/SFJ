## Clases abstractas en Dart

//En Dart, las clases abstractas se declaran con la palabra clave abstract. Un método abstracto no tiene cuerpo.

abstract class Animal {
  void emitirSonido(); // Método abstracto

  void dormir() {
    print("Zzz");
  }
}

class Dog extends Animal {
  void emitirSonido() {
    print("Woof!");
  }
}

void main() {
  Dog dog = Dog();
  dog.emitirSonido(); // Woof!
  dog.dormir();     // Zzz
}
