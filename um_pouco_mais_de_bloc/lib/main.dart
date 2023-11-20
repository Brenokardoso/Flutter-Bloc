// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:um_pouco_mais_de_bloc/HomePage/home_page.dart';
import 'package:um_pouco_mais_de_bloc/features/bloc_example.dart';
import 'package:um_pouco_mais_de_bloc/features/bloc_example/bloc/bloc_example_bloc.dart';
import 'package:um_pouco_mais_de_bloc/features/bloc_freezed.dart';
import 'package:um_pouco_mais_de_bloc/features/contacts/Lista_dos_contatos/contacts_list.dart';

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
      routes: {
        "/": (homepagecontext) => HomePage(),
        "/bloc_example": (BlocExamplecontext) => BlocProvider(
              create: (_) => ExampleBloc()..add(ExampleEventFindName()),
              child: BlocExample(),
            ),
        "/bloc_freezed": (_) => BLocFreezedExample(),
        "/pagina": (_) => ContactListClass(),
      },
      initialRoute: "/",
    );
  }
}
