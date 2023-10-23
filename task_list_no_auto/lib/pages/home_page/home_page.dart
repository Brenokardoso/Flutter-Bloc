// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/task_list");
                },
                child: Center(
                  child: Text("Lista De Tarefas Com SetState"),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/brnoshop");
                },
                child: Text("BrnoShop"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("N/C"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("N/C"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("N/C"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(left: 40, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text("N/C"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
