part of 'counter_bloc.dart';

abstract class CounterState {
  final int contador;
  CounterState(this.contador);
}

class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int numero) : super(numero);
}

