// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:more_bloc/HomePage/home_page.dart';
import 'package:more_bloc/features/bloc%20example/bloc/exemple_bloc.dart';
import 'package:more_bloc/features/bloc%20example/bloc_exemple_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (_) => HomePage(),
        "/bloc_example": (context) => BlocProvider(
              create: (_) => ExampleBloc()..add(ExampleFindNamesEvents()),
              child: BlocExamplePage(),
            ),
      },
      initialRoute: "/",
    );
  }
}
