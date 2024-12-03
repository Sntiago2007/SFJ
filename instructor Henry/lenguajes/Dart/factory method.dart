void main(){
  Logistica logistica = LogisticaAerea();
  Transporte transporte = logistica.crearTransporte();
  transporte.entregar();
}

abstract class Transporte{
  void entregar();
}

class Camion implements Transporte{
  @override
  void entregar() {
    print('Entregando carga con camión');
  }
}

class Avion implements Transporte{
  @override
  void entregar() {
    print('Entregando carga con avión');
  }
}

class Barco implements Transporte{
  @override
  void entregar() {
    print('Entregando carga con barco');
  }
}

abstract class Logistica{
  Transporte crearTransporte();
}

class LogisticaTerrestre implements Logistica{
  @override
  Transporte crearTransporte() {
  return Camion();
  }
}

class LogisticaAerea implements Logistica{
  @override
  Transporte crearTransporte() {
    return Avion();
  }
}

class LogisticaMaritima implements Logistica{
  @override
  Transporte crearTransporte() {
    return Barco();
  }
}

