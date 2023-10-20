part of 'bloc_bloc.dart';

abstract class BlocEvent {}

class BlocEventAddtask<String> extends BlocEvent {}

class BlocEventRemoveTask<String> extends BlocEvent {}

