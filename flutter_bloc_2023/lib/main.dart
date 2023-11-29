import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_2023/bloc/user_bloc_bloc.dart';
import 'package:flutter_bloc_2023/pages/home_page.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Bloc 2023",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {"/" : (_)=>BlocProvider(
        create: (blocContext) => UserBloc(),
        child: const HomePage(),  
      )},
      initialRoute: "/",
    );
  }
}