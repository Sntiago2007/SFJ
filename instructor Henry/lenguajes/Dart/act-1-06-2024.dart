import 'dart:io';

void main(){
    print("número de estudiantes:");
    int n = int.parse(stdin.readLineSync()!);

    For (i = 1; i <= n; i++) {
        print("nombre del estudiante:");
        String? s = stdin.readLineSync();

        print("ingrese las notas entre 1 y 10");

        print("nota1:");
        int n1 = int.parse(stdin.readLineSync()!);

        print("nota2:");
        int n2 = int.parse(stdin.readLineSync()!);

        print("nota3:");
        int n3 = int.parse(stdin.readLineSync()!);

        int suma = n1 + n2 + n3;
        double prom  = suma / 3;

        if (prom > 6){
            print("el estudiante $s gano");
        }else{
            print("el estudiante $s perdio");
        }
    }
}