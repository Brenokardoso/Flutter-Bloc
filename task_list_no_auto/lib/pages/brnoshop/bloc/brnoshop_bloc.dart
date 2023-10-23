// ignore_for_file: unused_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'brnoshop_event.dart';
part 'brnoshop_state.dart';

class BrnoShopBloc extends Bloc<BrnoShopEvent, BrnoShopState> {
  BrnoShopBloc() : super(BrnoShopStateInit());
}
