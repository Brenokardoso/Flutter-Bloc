part of 'bloc_bloc.dart';

abstract class TrocaNomeDaFraseEstado {
  String nome;
  TrocaNomeDaFraseEstado(this.nome);
}

class TrocaNomeDaFraseEstadoInciado extends TrocaNomeDaFraseEstado {
  TrocaNomeDaFraseEstadoInciado() : super("");
}
