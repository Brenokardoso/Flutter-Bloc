part of "user_bloc_bloc.dart";


abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];  
}

class UserEventLogin extends UserEvent{

  final String userId;
  final String name;

  
  const UserEventLogin({
    required this.userId,
    required this.name
  });
  
  @override
  List<Object> get props => [userId,name];
}