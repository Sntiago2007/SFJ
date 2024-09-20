class Perro
    attr_accessor :color, :edad, :peso
  end
  
  class Carro
    attr_accessor :marca, :color, :modelo
  end
  
  class Tv
    attr_accessor :alto, :marca, :ancho
  end
  
  p = Perro.new
  p.color = "negro"
  p.edad = 7
  p.peso = 40
  
  c = Carro.new
  c.modelo = "carrera 911 GT"
  c.marca = "porsche"
  c.color = "negro"
  
  t = Tv.new
  t.alto = 74.7
  t.marca = "LG"
  t.ancho = 132.8
  