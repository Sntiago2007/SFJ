import 'dart:io';

class Colaborador {
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte;

  Colaborador({
    required String nombreCompleto,
    required double aporte,
    required int tipoColaborador,
  })  : _nombreCompleto = nombreCompleto,
        _aporte = aporte,
        _tipoColaborador = tipoColaborador;

  String getNombreCompleto() => _nombreCompleto!;

  int getTipo() => _tipoColaborador!;

  @override
  String toString() {
    return '{"nombre": "$_nombreCompleto", "tipo": $_tipoColaborador, "aporte": $_aporte}';
  }

  double getAporte() => _aporte;
}

class Recolecta {
  List<Colaborador> _colaboradores = [];
  double _montoRecaudar;
  double _balance;

  Recolecta(this._montoRecaudar, {double balance = 0}) : _balance = balance;

  void addColaborador(Colaborador colaborador) {
    _colaboradores.add(colaborador);
    _balance += colaborador.getAporte();
  }

  bool finalizada() => _balance >= _montoRecaudar;

  List<Colaborador> generosos() => _colaboradores.where((c) => c.getAporte() > 10000).toList();

  double recaudoGenerosos() {
    double total = 0;
    for (var colaborador in generosos()) {
      total += colaborador.getAporte();
    }
    return total;
  }

  double promedioGenerosos() {
    double recaudo = 0;
    int colaboradoresGenerosos = 0;

    for (var colaborador in generosos()) {
      recaudo += colaborador.getAporte();
      colaboradoresGenerosos++;
    }

    return colaboradoresGenerosos > 0 ? recaudo / colaboradoresGenerosos : 0;
  }

  String recaudoPorTipo() {
    double recaudoTipo1 = 0;
    double recaudoTipo2 = 0;

    for (var colab in _colaboradores) {  
      if (colab.getTipo() == 1) {  
        recaudoTipo1 += colab.getAporte();  
      } else if (colab.getTipo() == 2) {  
        recaudoTipo2 += colab.getAporte();  
      }
    }

    return 'Recaudo Tipo 1: \$${recaudoTipo1}, Recaudo Tipo 2: \$${recaudoTipo2}';
  }
}

void main() {
  print("Ingresa monto a recaudar:");
  double monto = double.parse(stdin.readLineSync()!);

  Recolecta recolecta = Recolecta(monto, balance: 0);

  print("Monto a recaudar \$${monto}");
  print("---------------------------");

  while (!recolecta.finalizada()) {
    print("Ingresa nombre:");
    String nombre = stdin.readLineSync()!;

    print("Ingresa aporte:");
    double aporte = double.parse(stdin.readLineSync()!);

    print("Ingresa tipo de colaborador (1 o 2):");
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador colaborador = Colaborador(
      nombreCompleto: nombre,
      aporte: aporte,
      tipoColaborador: tipo,
    );

    print("---------------------------");

    recolecta.addColaborador(colaborador);
  }

  print("El recaudo de los generosos es = \$${recolecta.recaudoGenerosos()}");
  print("El promedio de los generosos es = \$${recolecta.promedioGenerosos()}");
  print(recolecta.recaudoPorTipo());
}