import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_2023/bloc/user_bloc_bloc.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Center(
        child : Text("Flutter Bloc"),),
        backgroundColor: Colors.orangeAccent,
      ), 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  
          ElevatedButton(onPressed: (){
             context.read<UserBloc>().add(const UserEventLogin(userId: "#01", name: "User01"));
            //  context.read<UserBloc>().add(const UserEventLogin(userId: "#02", name: "User02"));
          }, child: const Text("Enviar")),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder
              <UserBloc,UserState>
              (builder: (context,state){
                if(state is UserStateInital){
                  return const CircularProgressIndicator();
                }
                if(state is UserStateLoogedIn){
                  return Text(""" userId : ${state.props[0].toString()}\n\tusuário : ${state.props[1].toString()}""");
                }
                else{
                  Navigator.of(context).pushNamed("");
                  return const Text("Nem devem existir possibilidades de algo entrar aqui");
                }
              }),
            ],
          ),
        
        ],
      ),
    );
  }
}