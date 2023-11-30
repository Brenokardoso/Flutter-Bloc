import "package:flutter_bloc/flutter_bloc.dart";
part "bloc_event.dart";
part "bloc_state.dart";

class FormsBloc extends Bloc<FormsEvents,FormsStates >{
  FormsBloc() : super(FormsStatesInital());

  _addFormOnForms(FormsEventsAddForms event, Emitter emit){
    List<Map<String,dynamic>> formulario_novo = (state as FormsStatesData).formularios;
    formulario_novo.add(event.itens);
    formulario_novo;
    emit(FormsStatesData(formularios: formulario_novo));
  }
}