import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'example_state.dart';
part 'example_event.dart';

class ExampleBloc extends Bloc<ExampleBlocEvent, ExampleBlocState> {
  ExampleBloc() : super(ExampleBlocStateInital()) {
    on<ExampleBlocEventFindName>(_findNamesOnList);
  }

  FutureOr<void> _findNamesOnList(
      ExampleBlocEventFindName event, Emitter<ExampleBlocState> emit) async {
    final names = [
      "Higor",
      "amanda",
      "roberto da silva",
      "nome1",
      "nome2",
      "nome3",
      "nome4",
      "nome5"
    ];
    await Future.delayed(const Duration(seconds: 5));
    emit(ExampleBlocStateData(nomes: names));
  }
}
