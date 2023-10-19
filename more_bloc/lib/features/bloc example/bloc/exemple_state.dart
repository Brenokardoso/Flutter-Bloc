// ignore_for_file: non_constant_identifier_names
part of 'exemple_bloc.dart';

abstract class ExampleState {}

class ExampleStateInitialized extends ExampleState {
  ExampleStateInitialized() : super();
}

class ExampleStateData extends ExampleState {
  final List<String> lista_nomes;
  ExampleStateData({required this.lista_nomes});
}
