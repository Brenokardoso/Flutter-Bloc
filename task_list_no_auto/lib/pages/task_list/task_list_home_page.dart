// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_field, unnecessary_string_interpolations, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class TaskListHomePage extends StatefulWidget {
  TaskListHomePage({super.key});

  @override
  State<TaskListHomePage> createState() => _TaskListHomePageState();
}

class _TaskListHomePageState extends State<TaskListHomePage> {
  final formKey = GlobalKey<FormState>();
  final List<String> lista_de_tarefas = [
    "Comprar leite",
    "Pagar a conta de luz",
    "Estudar para o exame de matemática",
    "Marcar uma consulta com o médico",
    "Ligar para um amigo",
    "Fazer compras no supermercado",
    "Organizar a estante de livros",
    "Preparar o jantar",
    "Fazer exercícios físicos",
    "Limpar o carro",
  ];
  final List<String> subtitulos = [
    "Tarefa importante",
    "Pagamento mensal",
    "Preparação para o exame",
    "Cuidando da saúde",
    "Manter contato",
    "Lista de compras",
    "Organização em casa",
    "Cozinhando uma refeição deliciosa",
    "Mantenha-se ativo",
    "Manutenção do veículo",
  ];
  var termina_task_color = Colors.white;
  var termina_task_icon = Icons.lightbulb_outline;
  List<bool> tarefaConcluida = [];

  var horas = DateTime.now()
    ..hour
    ..day;

  final _taskController = TextEditingController();
  final _subTaskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    tarefaConcluida = List.generate(lista_de_tarefas.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Tarefas"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Wrap(
          children: [
            SingleChildScrollView(
              child: Container(
                height: 350,
                color: Color.fromARGB(255, 124, 179, 206),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "Tarefas desta semana",
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 40),
                        child: TextFormField(
                          maxLines: null,
                          controller: _taskController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Digite a Sua Tarefa",
                          ),
                          style: TextStyle(color: Colors.black),
                          validator: (value) => (value == null || value.isEmpty)
                              ? "Valor não váido"
                              : null,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 80),
                        child: TextFormField(
                          maxLines: null,
                          controller: _subTaskController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Digite os detalhes da tarefa",
                          ),
                          style: TextStyle(color: Colors.black),
                          validator: (value) => (value == null || value.isEmpty)
                              ? "Valor não váido"
                              : null,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(
                              () {
                                formKey.currentState!.save();
                                lista_de_tarefas.add(_taskController.text);
                                subtitulos.add(_subTaskController.text);
                                tarefaConcluida.add(false);
                                _taskController.clear();
                                _subTaskController.clear();
                              },
                            );
                          }
                        },
                        child: Text("Enviar"),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: lista_de_tarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.task),
                  subtitle: Text("${subtitulos[index]}"),
                  title: Text("${lista_de_tarefas[index]}"),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        tarefaConcluida[index] = !tarefaConcluida[index];
                      });
                    },
                    icon: Icon(
                      tarefaConcluida[index]
                          ? (Icons.lightbulb)
                          : (Icons.lightbulb_outline),
                      color:
                          tarefaConcluida[index] ? Colors.yellow : Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
