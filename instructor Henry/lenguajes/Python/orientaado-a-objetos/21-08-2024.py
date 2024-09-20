class Transporte:
    def __init__(self, empresa="Carolina", ciudad="B/quilla"):
        self.empresa = empresa
        self.ciudad = ciudad

    def get_info(self):
        return f"{self.empresa}-{self.ciudad}"

class Publico(Transporte):
    def __init__(self, ninterno, empresa="Carolina", ciudad="B/quilla"):
        super().__init__(empresa, ciudad)
        self._ninterno = ninterno
        self.ruta = None

    def get_codigo(self):
        return f"{self.ruta} - {self._ninterno}"

class Particular(Transporte):
    def __init__(self, modelo, empresa="Carolina", ciudad="B/quilla"):
        super().__init__(empresa, ciudad)
        self.placa = None
        self.color = None
        self._modelo = modelo

    def get_info(self):
        return self.ciudad

    def get_rtm(self):
        return self._modelo + 5

def main():
    pu = Publico(920)
    pu.ruta = "Malambo City"
    print(pu.get_codigo())

    pub = Publico(450)
    pub.ruta = "Cano dulce"
    print(pub.get_codigo())

    print("------------------------------------")

    pa = Particular(2020)
    pa.placa = "XYZ 123"
    pa.color = "Rojo"
    print(pa.get_info())
    print(f"La técnico mecánica se hace el: {pa.get_rtm()}")

    print("")

    par = Particular(2024)
    par.placa = "XYZ 321"
    par.color = "Azul"
    print(par.get_info())
    print(f"La técnico mecánica se hace el: {par.get_rtm()}")

if __name__ == "__main__":
    main()
