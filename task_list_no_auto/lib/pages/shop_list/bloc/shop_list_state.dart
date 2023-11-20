part of 'shop_list_bloc.dart';

abstract class ShopListState {
  List<String> lista;
  ShopListState(this.lista);
}

class ShopListStateInital extends ShopListState {
  ShopListStateInital() : super([]);
}

class ShopListStateData extends ShopListState {
  ShopListStateData(List<String> item) : super(item);
}
