void main(){
  Logistica logistica = LogisticaAerea();
  Transporte transporte = logistica.crearTransporte();
  transporte.entregar();
}

abstract class Transporte{
  void entregar();
}

class camion implements Transporte{
  @override
  void entregar() {
    print('Entregando carga con camión');
  }
}

class avion implements Transporte{
  @override
  void entregar() {
    print('Entregando carga con avión');
  }
}

class barco implements Transporte{
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
  return camion();
  }
}

class LogisticaAerea implements Logistica{
  @override
  Transporte crearTransporte() {
    return avion();
  }
}

class LogisticaMaritima implements Logistica{
  @override
  Transporte crearTransporte() {
    return barco();
  }
}

