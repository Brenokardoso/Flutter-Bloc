import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_event_freezed.dart';
part 'example_state_freezed.dart';

@freezed
class ExampleFreezedState with $_ExampleFreezedState{
  factory ExampleFreezedState.inital() = _ExampleFreezedStateInital;
  factory ExampleFreezedState.data({required List<String> nomes}) = _ExampleFreezedStateInital;
}

 