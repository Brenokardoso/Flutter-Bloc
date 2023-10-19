import 'package:bloc/bloc.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

class TrocaNomeDaFraseBloc
    extends Bloc<TrocaNomeDaFraseEvento, TrocaNomeDaFraseEstado> {
  TrocaNomeDaFraseBloc() : super(TrocaNomeDaFraseEstadoInciado());
}
