// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, avoid_print, avoid_single_cascade_in_expression_statements, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:um_pouco_mais_de_bloc/features/bloc_example/bloc/bloc_example_bloc.dart';

class BlocExample extends StatefulWidget {
  BlocExample({super.key});

  @override
  State<BlocExample> createState() => _BlocExampleState();
}

class _BlocExampleState extends State<BlocExample> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController _addNameController = TextEditingController();
  List<String> lista_de_nomes_adicionados = [];

  @override
  void dispose() {
    _addNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: BlocConsumer<ExampleBloc, ExampleState>(
        listener: (context, state) {
          print("O estado foi alterado");
        },
        builder: (context, state) {
          if (state is ExampleStateData) {
            return Form(
              key: formKey,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width * 1,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Text(
                          "Adicione um novo nome a lista aqui:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                        TextFormField(
                          controller: _addNameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Nomes",
                          ),
                          validator: (value) => (value == null || value.isEmpty)
                              ? "O campo se encontra vazio\nDigite algo!"
                              : null,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              setState(
                                () {
                                  formKey.currentState!.save();
                                  BlocProvider.of<ExampleBloc>(context)
                                    ..add(ExampleEventAddName(
                                        nome: _addNameController.text));

                                  RawKeyboardListener(
                                    focusNode: FocusNode(),
                                    child: Container(
                                      width: 0,
                                      height: 0,
                                    ),
                                    onKey: (RawKeyEvent event) {
                                      if (event is RawKeyDownEvent &&
                                          event.logicalKey ==
                                              LogicalKeyboardKey.enter) {
                                        BlocProvider.of<ExampleBloc>(context)
                                          ..add(ExampleEventAddName(
                                              nome: _addNameController.text));
                                        print('Enter pressionado!');
                                      }
                                    },
                                  );
                                  _addNameController.clear();
                                },
                              );
                              // _addNameController.clear();
                            }
                          },
                          child: Text("enviar"),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.names.length,
                    itemBuilder: (context, index) {
                      final names = state.names[index];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: ListTile(
                          title: Text("$names"),
                          trailing: IconButton(
                            icon: Icon(Icons.remove_circle_outline_rounded),
                            onPressed: () {
                              BlocProvider.of<ExampleBloc>(context)
                                ..add(ExampleEventRemoveName(index));
                              print(index);
                            },
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return Center(
            child: Text(
              "Nenhum dado até o presente momento",
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow,
              ),
            ),
          );
        },
      ),
    );
  }
}
