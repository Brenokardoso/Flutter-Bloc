// ignore_for_file: unused_element, non_constant_identifier_names, unused_local_variable, prefer_const_constructors, avoid_print, list_remove_unrelated_type

import 'dart:async';

import 'package:bloc/bloc.dart';
part 'bloc_example_event.dart';
part 'bloc_example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleEventFindName>(_findNames);
    on<ExampleEventRemoveName>(_removeNomes);
    on<ExampleEventAddName>(_addNomes);
  }

  FutureOr<void> _findNames(ExampleEventFindName event, Emitter emit) async {
    var countdown = 3;
    List<String> lista_de_nomes = [
      "Van Daimi",
      "Silverter Estalone",
      "Maique Taison",
      "Estiven Espilber",
      "Nicolas Caje",
    ];

    void countdownFunction() {
      if (countdown > 0) {
        print(countdown);
        countdown--;
        Future.delayed(Duration(seconds: 1), countdownFunction);
      } else {
        print("Is Over");
      }
    }

    countdownFunction();

    await Future.delayed(Duration(seconds: 3));

    emit(ExampleStateData(names: lista_de_nomes));
  }

  FutureOr<void> _removeNomes(
      ExampleEventRemoveName event, Emitter<ExampleState> emit) {
    final currentState = state as ExampleStateData;
    final listaDeNomesAtualizada = List<String>.from(currentState.names);
    if (event.index >= 0 && event.index < listaDeNomesAtualizada.length) {
      listaDeNomesAtualizada.removeAt(event.index);
      emit(ExampleStateData(names: listaDeNomesAtualizada));
    }
  }

  FutureOr<void> _addNomes(
      ExampleEventAddName event, Emitter<ExampleState> emit) {
    final novo_estado = state as ExampleStateData;
    final lista_de_nomes = List<String>.from(novo_estado.names);
    lista_de_nomes.add(event.nome);
    emit(ExampleStateData(names: lista_de_nomes));
  }
}
