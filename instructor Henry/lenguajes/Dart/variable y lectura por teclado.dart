import 'dart:io';

void main(){
    
    print("escribe el numero del cual quieres ver su tabla");
    int n = int.parse(stdin.readLineSync()!);
     print(' ');
     print("la tabla del numero $N es:");
     print(' ');
     
    for (var h = 1; h <= 10; h++) {

        int mul = n * h;
        print("$N x $h = $mul");
    }


}