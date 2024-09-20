class Gallo {
  String? color;
  String? nombre;
  String? sexo;
  String? raza;

  Gallo(String sexo, String raza) {
    this.sexo = sexo;
    this.raza = raza;
  }
}

void main(){
  Gallo g = new Gallo("M", "fino");
  g.color = "morado";
  g.nombre = "como tu";
  print(g.color);
  print(g.nombre);
  print(g.sexo);
  print(g.raza);
}