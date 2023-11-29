part of "user_bloc_bloc.dart";

abstract class UserState extends Equatable{
  const UserState();
  @override 
  List<Object> get props => [];
}

class UserStateInital extends UserState{
  const UserStateInital();

}

class UserStateLoogedIn extends UserState{
  String userId;
  String name;

  UserStateLoogedIn({
    required this.userId,
    required this.name
  });

  @override
  List<Object> get props => [userId,name];
}