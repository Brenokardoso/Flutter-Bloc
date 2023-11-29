import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mais_bloc_parte_3_o_retorno/features/example/bloc/example_bloc.dart';

class ExampleBlocPage extends StatefulWidget {
  const ExampleBlocPage({super.key});

  @override
  State<ExampleBlocPage> createState() => ExampleBlocPageState();
}

class ExampleBlocPageState extends State<ExampleBlocPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _namedController = TextEditingController();

  @override
  void dispose() {
    _namedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var nome = "";
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Example Home Page"),
        ),
      ),
      body: Form(
        key: formKey,
        child: BlocBuilder<ExampleBloc, ExampleBlocState>(
          builder: (context, state) {
            if (state is ExampleBlocStateData) {
              return ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.218,
                    color: const Color.fromRGBO(18, 18, 18, 0.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _namedController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Está vazio";
                            } else {
                              null;
                            }
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                nome = _namedController.text;
                                (context)
                                    .read<ExampleBloc>()
                                    .add(ExampleBlocAddName(nome));
                                _namedController.clear();
                              }
                            },
                            child: const Text("Enviar")),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                      ],
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.nomes.length,
                      itemBuilder: (context, index) {
                        var names = state.nomes[index];
                        return ListTile(
                          leading: const Icon(Icons.person),
                          title: Text(names),
                        );
                      }),
                ],
              );
            } else {
              return const Text("Não há nomes na lista");
            }
          },
        ),
      ),
    );
  }
}
