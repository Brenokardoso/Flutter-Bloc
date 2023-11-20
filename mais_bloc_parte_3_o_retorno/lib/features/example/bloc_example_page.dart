import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mais_bloc_parte_3_o_retorno/features/example/bloc/example_bloc.dart';

class ExampleBlocPage extends StatefulWidget {
  const ExampleBlocPage({super.key});

  @override
  State<ExampleBlocPage> createState() => ExampleBlocPageState();
}

class ExampleBlocPageState extends State<ExampleBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Example Home Page"),
        ),
      ),
      body: BlocBuilder<ExampleBloc, ExampleBlocState>(
        builder: (context, state) {
          if (state is ExampleBlocStateData) {
            return ListView.builder(
                itemCount: state.nomes.length,
                itemBuilder: (context, index) {
                  var names = state.nomes[index];
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(names),
                  );
                });
          } else {
            return const Text("Não há nomes na lista");
          }
        },
      ),
    );
  }
}
