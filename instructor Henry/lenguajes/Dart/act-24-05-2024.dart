import "dart:io";

void main(){
 void main(){
  print("Nombre");
  String? n = stdin.readLineSync();

  print("Apellido");
  String? ap = stdin.readLineSync();

  print("Numero 1");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Numero 2");
  int n2 = int.parse(stdin.readLineSync()!);

  print("Numero 3");
  int n3 = int.parse(stdin.readLineSync()!);

//-------------------------------------------

  int sum = n1 + n2 + n3;

  double prom = sum/3;

//-------------------------------------------

  print("Tu nombre es: $n $ap");
  print("El promedio de los 3 numeros es $prom");
  

}