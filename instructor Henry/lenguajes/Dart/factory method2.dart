void main(){
  Logistica l = LogisticaMarina();
  Transporte t = l.crearTransporte();
  t.entrega();
}

abstract class Transporte{
  void entrega();
}

class Barco extends Transporte{
  @override
  void entrega() {
    print('entregar pedido en barco');
  }
}

class Camion extends Transporte{
  @override
  void entrega() {
    print('entregar pedido en camion');
  }
}

abstract class Logistica{
  Transporte crearTransporte();
}

class LogisticaTerrestre extends Logistica{
  @override
  Transporte crearTransporte() {
    return Camion();
  }
}

class LogisticaMarina extends Logistica{
  @override
  Transporte crearTransporte() {
    return Barco();
  }
}

