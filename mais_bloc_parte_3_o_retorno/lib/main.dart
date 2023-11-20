import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mais_bloc_parte_3_o_retorno/features/example/bloc/example_bloc.dart';
import 'package:mais_bloc_parte_3_o_retorno/features/example/bloc_example_page.dart';
import 'package:mais_bloc_parte_3_o_retorno/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Mais Um Pouco De Bloc",
      routes: {
        "/": (context) => const HomePage(),
        "/example": (contextExample) => BlocProvider(
              create: (contextBlocExample) =>
                  ExampleBloc()..add(ExampleBlocEventFindName()),
              child: const ExampleBlocPage(),
            ),
      },
      initialRoute: "/",
    );
  }
}
