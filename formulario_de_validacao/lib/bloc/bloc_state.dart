part of "bloc_bloc.dart";

abstract class FormsStates{}

class FormsStatesInital extends FormsStates{
  FormsStatesInital();
}

class FormsStatesData extends FormsStates{
  List<Map<String,dynamic>> formularios;
  FormsStatesData({required this.formularios}); 
}