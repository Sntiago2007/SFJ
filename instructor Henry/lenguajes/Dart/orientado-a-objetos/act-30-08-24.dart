import 'dart:io';

class Estudiante {
  List<int> recaudacion = [];

  void agregarDinero() {
    print('Ingrese cuanto desea recaudar: ');
    int? dineroDelRecaudo = int.parse(stdin.readLineSync()!);

    while (this.obtenerTotal() < dineroDelRecaudo) {
      print('Ingrese cuanto desea aportar: ');
      int? aporte = int.parse(stdin.readLineSync()!);

      recaudacion.add(aporte);
    }
  }

  int obtenerTotal() {
    int suma = 0;

    for (var dinero in recaudacion) {
      suma = suma + dinero;
    }

    return suma;
  }
}

void main() {
  Estudiante student = new Estudiante();
  student.agregarDinero();
  print('El total recaudo es de: ${student.obtenerTotal()}');
}
