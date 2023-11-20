part of 'example_bloc.dart';

abstract class ExampleBlocState {}

class ExampleBlocStateInital extends ExampleBlocState {}

class ExampleBlocStateData extends ExampleBlocState {
  final List<String> nomes;
  ExampleBlocStateData({required this.nomes});
}
