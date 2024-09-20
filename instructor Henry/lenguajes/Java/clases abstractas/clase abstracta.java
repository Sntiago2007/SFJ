// Clase abstracta en java

/*En Java, se usa la palabra clave abstract para definir tanto clases como métodos abstractos. Una clase que 
contiene al menos un método abstracto debe ser abstracta.
*/
abstract class Animal {
    abstract void emitirSonido(); // Método abstracto

    void dormir() {
        System.out.println("Zzz");
    }
}

class Dog extends Animal {
    void emitirSonido() {
        System.out.println("Woof!");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.emitirSonido(); // Woof!
        dog.dormir();     // Zzz
    }
}
