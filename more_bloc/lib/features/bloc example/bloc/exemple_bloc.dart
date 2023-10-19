// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bloc/bloc.dart';
part 'exemples_event.dart';
part 'exemple_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitialized()) {
    on<ExampleFindNamesEvents>(_findNames);
  }

  FutureOr<void> _findNames(ExampleFindNamesEvents event, Emitter emit) async {
    await Future.delayed(Duration(seconds: 2));
    final names = ['rodrigo', 'breno', 'lucas', 'higor'];
    emit(ExampleStateData(lista_nomes: names));
  }
}
