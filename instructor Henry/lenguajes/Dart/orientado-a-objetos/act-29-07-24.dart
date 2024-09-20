class Perro{
    int? peso;
    String? color;
    int? edad;
}

class Carro{
    String? modelo;
    String? marca;
    String? color;
}

class Tv{
    int? alto;
    String? marca;
    String? ancho;
}


void main(){
    Perro p = new Perro;
    p.peso = 40;
    p.color = "negro";
    p.edad = 7;

    Carro c = new Carro;
    c.modelo = "carrera 911 GT";
    c.marca = "porsche";
    c.color = "negro";

    Tv t = new Tv;
    t.alto = 74.7;
    t.marca = "LG";
    t.ancho = 132.8;

}