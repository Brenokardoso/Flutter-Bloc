part of 'bloc_example_bloc.dart';

abstract class ExampleEvent {}

class ExampleEventFindName extends ExampleEvent {}

class ExampleEventAddName extends ExampleEvent {
  final String nome;
  ExampleEventAddName({required this.nome});
}

class ExampleEventRemoveName extends ExampleEvent {
  final int index;
  ExampleEventRemoveName(this.index);
}
