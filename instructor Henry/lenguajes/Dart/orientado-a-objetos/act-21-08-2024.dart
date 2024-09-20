class Transporte {
  String empresa = "Carolina";
  String ciudad = "B/quilla";
  
  String getInfo() {
    return "$empresa-$ciudad";
  }
}

class Publico extends Transporte {
  int _ninterno;
  String? ruta;
  
  Publico(this._ninterno);
  
  String getCodigo() {
    return "$ruta - $_ninterno";
  }
}

class Particular extends Transporte {
  String? placa;
  String? color;
  int _modelo;
  
  Particular(this._modelo);
  
  @override
  String getInfo() {
    return ciudad;
  }
  
  int getRtm() {
    return _modelo + 5;
  }
}

void main() {
  Publico pu = Publico(920);
  pu.ruta = "Malambo City";
  print(pu.getCodigo());
  
  Publico pub = Publico(450);
  pub.ruta = "Cano dulce";
  print(pub.getCodigo());
  
  print("------------------------------------");
  
  Particular pa = Particular(2020);
  pa.placa = "XYZ 123";
  pa.color = "Rojo";
  print(pa.getInfo());
  print("La tecnico mecanica se hace el: ${pa.getRtm()}");
  
  print("");
  
  Particular par = Particular(2024);
  par.placa = "XYZ 321";
  par.color = "Azul";
  print(par.getInfo());
  print("La tecnico mecanica se hace el: ${par.getRtm()}");
}
