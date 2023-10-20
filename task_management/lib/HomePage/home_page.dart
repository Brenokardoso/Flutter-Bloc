// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Escolha a sua Aplicação",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/bloc_page");
                },
                child: Text("Lista de Tarefas"))
          ],
        ),
      ),
    );
  }
}
