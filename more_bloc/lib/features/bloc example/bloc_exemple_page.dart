// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:more_bloc/features/bloc%20example/bloc/exemple_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Example"),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("A quantidade de nomes é : ${state}"),
              action: SnackBarAction(label: "Sair", onPressed: () {}),
            ),
          );
        },
        child: Column(
          children: [
            BlocBuilder<ExampleBloc, ExampleState>(
              builder: (context, state) {
                if (state is ExampleStateData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.lista_nomes.length,
                    itemBuilder: ((context, index) {
                      final name = state.lista_nomes[index];
                      return ListTile(
                        title: Text("$name:"),
                      );
                    }),
                  );
                }
                return Center(child: Text("Nada"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
