// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_import

import 'package:exercicios/HomePage/home_page.dart';
import 'package:exercicios/HomePage/bloc_page/troca_de_nomes_page.dart';
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
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (home) => HomePage(),
        "/bloc": (bloc) => TrocaDeNomesPage(),
      },
      initialRoute: "/",
    );
  }
}
