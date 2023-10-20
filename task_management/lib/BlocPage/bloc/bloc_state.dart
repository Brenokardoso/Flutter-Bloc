part of 'bloc_bloc.dart';

abstract class BlocState {
  final List<String> tarefas;
  BlocState(this.tarefas);
}

class BlocStateAddTarefa extends BlocState {
  final String tarefa;
  BlocStateAddTarefa(this.tarefa) : super(tarefa as List<String>);
}

class BlocStateRemoveTarefa extends BlocState {
  final int index;
  BlocStateRemoveTarefa(this.index) : super(tarefas.remove(index));
}

class BlocStateInitTarefa extends BlocState {
  BlocStateInitTarefa() : super(["", ""]);
}
