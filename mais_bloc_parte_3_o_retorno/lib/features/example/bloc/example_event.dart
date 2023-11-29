part of 'example_bloc.dart';

abstract class ExampleBlocEvent {}

class ExampleBlocEventFindName extends ExampleBlocEvent {}

class ExampleBlocAddName extends ExampleBlocEvent {
  String nome;
  ExampleBlocAddName(this.nome);
}

class ExampleBlocRemoveName extends ExampleBlocEvent {}
