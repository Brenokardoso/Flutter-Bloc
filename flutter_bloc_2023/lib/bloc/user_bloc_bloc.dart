
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part "user_bloc_state.dart";
part "user_bloc_event.dart";

class UserBloc extends Bloc<UserEvent,UserState>{
  UserBloc() : super(const UserStateInital()){
    on<UserEventLogin>(_userLogin);
  }

  void _userLogin(UserEventLogin event,Emitter emit){
    UserStateLoogedIn user = UserStateLoogedIn(
      userId: event.userId, 
      name: event.name
    );
    emit(user);
  }
}