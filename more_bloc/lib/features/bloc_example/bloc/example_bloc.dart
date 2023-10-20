// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInital()) {
    on<ExampleEventFindName>(_findNames);
    on<ExampleEventRemoveName>(_removeNames);
  }

  FutureOr<void> _findNames(ExampleEventFindName event, Emitter emit) async {
    final names = ["breno cardoso", "sexta-feira", "Dart Vaider", "Alucard,"];
    await Future.delayed(Duration(seconds: 5));
    emit(ExampleStateData(names));
  }

  FutureOr<void> _removeNames(
      ExampleEventRemoveName event, Emitter emit) async {
    if (state is ExampleStateData) {
      var lista = (state as ExampleStateData).nome;
      lista.remove("");
    }
  }
}
