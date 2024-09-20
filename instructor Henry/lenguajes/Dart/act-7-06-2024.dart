import 'dart';

void main(){
    print("ingresa cantidad de personas para la vaca");
    int s = int.parse(stdin.readLineSync()!);
    int a = 0;
    int x = 0;
    int z = 0;
    int c = 0;
    int w = 0;

    print("----------------------------------------------------------------");

    for (var i = 1; i<= s; i++) {
    print("Cantidad de dinero aportado");
    int b    = int.parse(stdin.readLineSync()!);

    a = a + b;

    if (b >= 5000) {
      x = x + 1;
      z = z + b;
    }else{
      c = c + 1;
      w = w + b;
    }
  }
  print("el total recaudado es: \$$a");
  print("el promedio por persona es: \$${(a~/s)}");

  print("----------------------------------------------------------------");

  print("el total que recaudaron los que dieron más de \$5000 es: \$$z");
  print("la cantidad de personas que pusieron más de \$5000 son: $x");
  print("el promedio de los que pusieron más de \$5000 es: \$${z~/x}");

  print("----------------------------------------------------------------");

  print("el total que recaudaron los que pusieron menos de \$5000 es: \$$w");
  print("la cantidad de personas que pusieron menos de \$5000 son: $c");
  print("el promedio de los que pusieron menos de \$5000 es: \$${w~/c}");
}