// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TrocaDeNomesPage extends StatefulWidget {
  const TrocaDeNomesPage({super.key});

  @override
  State<TrocaDeNomesPage> createState() => _TrocaDeNomesPageState();
}

class _TrocaDeNomesPageState extends State<TrocaDeNomesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Troca De Nomes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
