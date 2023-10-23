part of 'brnoshop_bloc.dart';

abstract class BrnoShopEvent {}

class BrnoShopEventAddProduto extends BrnoShopEvent {}

class BrnoShopEventRemoveProduto extends BrnoShopEvent {}

class BrnoShopEventOlharListaDeProdutos extends BrnoShopEvent {}
