// ignore_for_file: prefer_typing_uninitialized_variables
part of 'counter_cubit.dart';

class CounterCubitState {
  var contador;
  CounterCubitState(this.contador);
}

class CounterCubitStateIntialized extends CounterCubitState {
  CounterCubitStateIntialized() : super(0);
}

class CounterCubitStateData extends CounterCubitState {
  CounterCubitStateData(int valor) : super(valor);
}
