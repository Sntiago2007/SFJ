## Clases y Tipos de Clases en Dart

### Clases en Dart

Clase: En Dart, una clase es una plantilla para crear objetos. Define un conjunto de atributos y métodos que los objetos de la clase tendrán.

class MiClase {
  String atributo1;
  int atributo2;

  MiClase(this.atributo1, this.atributo2);

  void metodo() {
    print('$atributo1 $atributo2');
  }
}

### Tipos de Clases

Clases Base (Superclase): Son clases de las que otras clases pueden heredar. Proveen atributos y métodos que pueden ser utilizados o sobrescritos por las subclases.


class ClaseBase {
  void metodoBase() {
    print('Método en la clase base');
  }
}

Clases Derivadas (Subclases): Son clases que heredan de una o más clases base. Pueden sobrescribir o extender las funcionalidades de las clases base.


class ClaseDerivada extends ClaseBase {
  void metodoDerivado() {
    print('Método en la clase derivada');
  }
}
Clases Abstractas: Son clases que no se pueden instanciar directamente y están diseñadas para ser heredadas. Pueden incluir métodos abstractos que deben ser implementados por las subclases.


abstract class ClaseAbstracta {
  void metodoConcreto() {
    print('Método concreto en clase abstracta');
  }

  void metodoAbstracto();
}

Mixins: Son una forma de reutilización de código en múltiples clases. Un mixin es similar a una clase, pero está diseñado para ser usado como una adición a otras clases.


mixin MixinEjemplo {
  void metodoMixin() {
    print('Método en el mixin');
  }
}

class ClaseConMixin with MixinEjemplo {
  void metodoClase() {
    print('Método en la clase con mixin');
  }
}

Interfaces: En Dart, cada clase puede actuar como una interfaz. Para usar una clase como interfaz, se implementa la clase.

class InterfaceEjemplo {
  void metodoInterface();
}

class ImplementacionEjemplo implements InterfaceEjemplo {
  @override
  void metodoInterface() {
    print('Implementación del método de la interfaz');
  }
}