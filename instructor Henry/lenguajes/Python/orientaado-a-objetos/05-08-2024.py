class Transporte:
    def __init__(self, marca=None):
        self.marca = marca

class Terrestre(Transporte):
    def __init__(self, marca=None, llantas=None):
        super().__init__(marca)
        self.llantas = llantas

class Aereo(Transporte):
    def __init__(self, marca=None, motores=None):
        super().__init__(marca)
        self.motores = motores

class Auto(Terrestre):
    def __init__(self, marca=None, llantas=None, aire=None):
        super().__init__(marca, llantas)
        self.aire = aire

class Moto(Terrestre):
    def __init__(self, marca=None, llantas=None, cascos=None):
        super().__init__(marca, llantas)
        self.cascos = cascos

class Avion(Aereo):
    @staticmethod
    def manual():
        print("hola")

# Ejecución del programa
carro = Auto(marca="Ford", llantas=4, aire=True)

moto = Moto(marca="Suzuki", llantas=2, cascos=2)

avion = Avion(marca="Delta", motores=3)
Avion.manual()
