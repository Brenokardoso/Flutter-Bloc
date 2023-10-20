// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:more_bloc/features/bloc_example/bloc/example_bloc.dart';

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
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Lista Carregada,com ${state.nome.length} nomes"),
                action: SnackBarAction(label: "sair", onPressed: () {}),
              ),
            );
          } else {}
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocSelector<ExampleBloc, ExampleState, bool>(
                selector: (state) {
                  if (state is ExampleStateInital) {
                    return true;
                  }
                  return false;
                },
                builder: (context, showLoader) {
                  if (showLoader) {
                    return Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
              BlocSelector<ExampleBloc, ExampleState, List<String>>(
                selector: (state) =>
                    state is ExampleStateData ? state.nome : [],
                builder: (context, nome) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: nome.length,
                    itemBuilder: (context, index) {
                      final name = nome[index];
                      ListTile(
                        title: Text(
                          "nomes : ${nome[index]}",
                        ),
                        onTap: () {
                          context
                              .read<ExampleBloc>()
                              .add(ExampleEventRemoveName(name));
                        },
                      );
                    },
                  );
                },
              ),
              BlocConsumer<ExampleBloc, ExampleState>(
                listener: (context, state) {
                  print("Mudança escutada");
                },
                builder: (context, state) {
                  if (state is ExampleStateData) {
                    return Text("Consumer: ${state.nome.length}\n");
                  }
                  return SizedBox.shrink();
                },
              ),
              BlocBuilder<ExampleBloc, ExampleState>(
                builder: (context, state) {
                  if (state is ExampleStateData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Text(
                        "${state.nome[index]}",
                        textAlign: TextAlign.center,
                      ),
                      itemCount: state.nome.length,
                    );
                  } else {
                    return Text("nenhum nome cadastrado");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
