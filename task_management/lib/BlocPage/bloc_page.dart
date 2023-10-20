// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/BlocPage/bloc/bloc_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerenciador De Tarefas"),
      ),
      body: BlocConsumer<BlocManager, BlocState>(
        builder: (context, state) {
          // if (state is BlocStateData) {
          //   return ListView.builder(
          //     itemCount: state.tarefas.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text("${state.tarefas[index]}"),
          //       );
          //     },
          //   );
          // }
          return Text("Tudo deu errado meu brother");
        },
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Agenda Atualizada"),
            action: SnackBarAction(label: "cancelar", onPressed: () {}),
          ));
        },
      ),
    );
  }
}
