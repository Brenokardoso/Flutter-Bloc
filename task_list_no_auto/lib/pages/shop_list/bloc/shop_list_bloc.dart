// ignore_for_file: unused_element

import 'package:bloc/bloc.dart';
part 'shop_list_event.dart';
part 'shop_list_state.dart';

class ShopListBloc extends Bloc<ShopListEvent, ShopListState> {
  ShopListBloc() : super(ShopListStateInital()) {
    on<ShopListEventAdd>(_addEventInList);
  }

  _addEventInList(ShopListEventAdd event, Emitter emit) {
    List<String> listaParaEnviar = state.lista;
    listaParaEnviar.add(event.item);
    emit(ShopListStateData(listaParaEnviar));
  }
}
