// ignore_for_file: empty_constructor_bodies, unused_element

import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterIncrement event, Emitter emit) {
    emit(CounterStateData(state.contador + 1));
  }

  void _decrement(CounterDecrement event, Emitter emit) {
    emit(CounterStateData(state.contador - 1));
  }
}
