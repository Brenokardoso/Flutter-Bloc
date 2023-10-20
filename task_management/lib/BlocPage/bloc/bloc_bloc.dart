// ignore_for_file: unused_import

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocManager extends Bloc<BlocEvent, BlocState> {
  BlocManager() : super() {
    on<BlocEventAddtask>(_addTask);
    on<BlocEventRemoveTask>(_removeTask);
  }

  _addTask(BlocEventAddtask event, Emitter emit) {}

  _removeTask(BlocEvent event, Emitter emir) {}
}
