class Transporte{
  String? marca;
}

class Terrestre extends Transporte{
  int? llantas;
} 

class Aereo extends Transporte{
  int? motores;
} 

class Auto extends Terrestre{
  bool? aire;
} 

class Moto extends Terrestre{
  int? cascos;
} 

class Avion extends Aereo{
  static void manual(){
    print("hola");
  }
} 

void main(){
  Auto carro = new Auto();
  carro.marca = "Ford";
  carro.llantas = 4;
  carro.aire = true;

  Moto moto = new Moto();
  moto.marca = "Suzuki";
  moto.llantas = 2;
  moto.cascos = 2;

  Avion avion = new Avion();
  avion.marca = "Delta";
  avion.motores = 3;
  Avion.manual();

}