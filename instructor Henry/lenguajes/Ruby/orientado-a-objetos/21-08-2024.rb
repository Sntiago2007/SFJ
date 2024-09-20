class Transporte
    def initialize(empresa = "Carolina", ciudad = "B/quilla")
      @empresa = empresa
      @ciudad = ciudad
    end
  
    def get_info
      "#{@empresa}-#{@ciudad}"
    end
  end
  
  class Publico < Transporte
    def initialize(ninterno, empresa = "Carolina", ciudad = "B/quilla")
      super(empresa, ciudad)
      @ninterno = ninterno
      @ruta = nil
    end
  
    def ruta=(ruta)
      @ruta = ruta
    end
  
    def get_codigo
      "#{@ruta} - #{@ninterno}"
    end
  end
  
  class Particular < Transporte
    def initialize(modelo, empresa = "Carolina", ciudad = "B/quilla")
      super(empresa, ciudad)
      @modelo = modelo
      @placa = nil
      @color = nil
    end
  
    def placa=(placa)
      @placa = placa
    end
  
    def color=(color)
      @color = color
    end
  
    def get_info
      @ciudad
    end
  
    def get_rtm
      @modelo + 5
    end
  end
  
  def main
    pu = Publico.new(920)
    pu.ruta = "Malambo City"
    puts pu.get_codigo
  
    pub = Publico.new(450)
    pub.ruta = "Cano dulce"
    puts pub.get_codigo
  
    puts "------------------------------------"
  
    pa = Particular.new(2020)
    pa.placa = "XYZ 123"
    pa.color = "Rojo"
    puts pa.get_info
    puts "La técnico mecánica se hace el: #{pa.get_rtm}"
  
    puts ""
  
    par = Particular.new(2024)
    par.placa = "XYZ 321"
    par.color = "Azul"
    puts par.get_info
    puts "La técnico mecánica se hace el: #{par.get_rtm}"
  end
  
  main
  