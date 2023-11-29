import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'example_state.dart';
part 'example_event.dart';

class ExampleBloc extends Bloc<ExampleBlocEvent, ExampleBlocState> {
  ExampleBloc() : super(ExampleBlocStateInital()) {
    on<ExampleBlocEventFindName>(_findNamesOnList);
    on<ExampleBlocAddName>(_addNamesOnList);
  }

  FutureOr<void> _findNamesOnList(
      ExampleBlocEventFindName event, Emitter<ExampleBlocState> emit) async {
    final names = [
      "nome1",
      "nome2",
      "nome3",
      "nome4",
      "nome5",
      "nome1",
      "nome2",
      "nome3",
      "nome4",
      "nome5"
    ];
    await Future.delayed(const Duration(seconds: 1, milliseconds: 500));
    emit(ExampleBlocStateData(nomes: names));
  }

  _addNamesOnList(ExampleBlocAddName event, Emitter emit) {
    List<String> lista_completa = (state as ExampleBlocStateData).nomes;
    lista_completa.add(event.nome);
    emit(ExampleBlocStateData(nomes: lista_completa));
  }
}
