import 'package:flutter/material.dart';
import 'package:formulario_de_validacao/bloc/bloc_bloc.dart';
import 'package:formulario_de_validacao/pages/home_page.dart';
import "package:flutter_bloc/flutter_bloc.dart";
void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Formulário de Validações",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (contextRouteHomePage)=> BlocProvider<FormsBloc>(
          create: (contextFormsPage) => FormsBloc(),
          child: HomePage(),
        ),
      },
    );
  }
}