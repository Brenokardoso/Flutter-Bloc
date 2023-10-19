import 'package:bloc/bloc.dart';
import 'package:bloc_and_cubit/page_bloc/bloc/counter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitStateIntialized());

  void Incrementar() {
    emit(CounterCubitStateData(state.contador + 1));
  }

  void Decrementar() {
    emit(CounterCubitStateData(state.contador - 1));
  }
}
