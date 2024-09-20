import 'dart:io';

void main(){
  print('Escriba el número de declaración de renta');
  int R = int.parse(stdin.readLineSync()!);

  if (R <= 10){
    double renta1 = (R * 20 / 100);
    double renta = R - renta1;
    print('El valor final de la renta es: $renta\$');
  }else if (R <= 100){
    double renta1 = (R * 10 / 100); 
    double renta = R - renta1;
    print('El valor final de la renta es: $renta\$');
  }else if (R <= 1000){
    double renta1 = (R * 5 / 100);
    double renta = R - renta1; 
    print('El valor final de la renta es: $renta\$');
  }else {
    double renta1 = (R * 1 / 100); 
    double renta = R - renta1;
    print('El valor final de la renta es: $renta\$');
  }
}