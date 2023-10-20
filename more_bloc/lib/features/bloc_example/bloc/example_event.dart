part of 'example_bloc.dart';

abstract class ExampleEvent {}

class ExampleEventFindName extends ExampleEvent {}

class ExampleEventAddName extends ExampleEvent {}

class ExampleEventRemoveName extends ExampleEvent {
  final String nome;
  ExampleEventRemoveName(this.nome);
}
