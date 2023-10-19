// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exchanging Phrases"),
      ),
      body: Center(
        child: Wrap(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {},
                child: Text("Go to Troca de Nomes"),
              ),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("teste"),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Teste"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
