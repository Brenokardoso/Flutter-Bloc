part of 'example_bloc.dart';

abstract class ExampleState {}

class ExampleStateInital extends ExampleState {}

class ExampleStateData extends ExampleState {
  final List<String> nome;
  ExampleStateData(this.nome);
}
