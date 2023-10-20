import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/BlocPage/bloc/bloc_bloc.dart';
import 'package:task_management/BlocPage/bloc_page.dart';
import 'package:task_management/HomePage/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/bloc_page": (context) => BlocProvider(
              create: (_) => BlocManager()
                ..add(BlocEventAddtask())
                ..add(BlocEventRemoveTask()),
              child: const BlocPage(),
            ),
      },
      initialRoute: "/",
    );
  }
}
