part of 'shop_list_bloc.dart';

abstract class ShopListEvent {}

class ShopListEventAdd extends ShopListEvent {
  String item;
  ShopListEventAdd(this.item);
}

class ShopListEventView extends ShopListEvent {}
