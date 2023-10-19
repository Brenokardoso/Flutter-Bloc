// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:bloc_and_cubit/home_page.dart';
import 'package:bloc_and_cubit/page_bloc/bloc/counter_bloc.dart';
import 'package:bloc_and_cubit/page_bloc/counter_bloc_page.dart';
import 'package:bloc_and_cubit/page_cubit/counter_cubit_page.dart';
import 'package:bloc_and_cubit/page_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (homepage) => HomePage(),
        "/bloc": (bloc) => BlocProvider(
              create: (_) => CounterBloc(),
              child: CounterBlocPage(),
            ),
        "/cubit": (cubit) => BlocProvider(
              create: (_) => CounterCubit(),
              child: CounterCubitPage(),
            ),
      },
      initialRoute: "/",
    );
  }
}
