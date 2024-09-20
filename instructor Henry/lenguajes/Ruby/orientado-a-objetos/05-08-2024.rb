class Transporte
    attr_accessor :marca
  end
  
  class Terrestre < Transporte
    attr_accessor :llantas
  end
  
  class Aereo < Transporte
    attr_accessor :motores
  end
  
  class Auto < Terrestre
    attr_accessor :aire
  end
  
  class Moto < Terrestre
    attr_accessor :cascos
  end
  
  class Avion < Aereo
    def self.manual
      puts "hola"
    end
  end
  
  # Ejecución del programa
  carro = Auto.new
  carro.marca = "Ford"
  carro.llantas = 4
  carro.aire = true
  
  moto = Moto.new
  moto.marca = "Suzuki"
  moto.llantas = 2
  moto.cascos = 2
  
  avion = Avion.new
  avion.marca = "Delta"
  avion.motores = 3
  Avion.manual
  