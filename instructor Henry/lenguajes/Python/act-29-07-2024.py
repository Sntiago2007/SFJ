class Perro:
    def __init__(self, color=None, edad=None, peso=None):
        self.color = color
        self.edad = edad
        self.peso = peso
class Carro:
    def __init__(self, marca=None, color=None, modelo=None):
        self.marca = marca
        self.color = color
        self.modelo = modelo

class Tv:
    def __init__(self, alto=None, marca=None, ancho=None):
        self.alto = alto
        self.marca = marca
        self.ancho = ancho


p = Perro(color="negro", edad=7, peso=40)

c = Carro(marca="porsche", color="Negro", modelo="carrera 911 GT")

t = Tv(alto=74.7, marca = "LG", ancho = 132.8)