// ignore_for_file: non_constant_identifier_names

part of 'brnoshop_bloc.dart';

abstract class BrnoShopState {
  final List<dynamic> carrinho_de_compras = [];
}

class BrnoShopStateInit extends BrnoShopState {
  BrnoShopStateInit() : super();
}

class BrnoShopStateData extends BrnoShopState {}
