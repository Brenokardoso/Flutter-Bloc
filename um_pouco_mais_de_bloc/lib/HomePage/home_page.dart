// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Color> lista_das_cores = [Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 1),
                  height: MediaQuery.of(context).size.width * 0.465,
                  width: MediaQuery.of(context).size.width * 0.465,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/bloc_example");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Example"),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 1),
                  height: MediaQuery.of(context).size.width * 0.465,
                  width: MediaQuery.of(context).size.width * 0.465,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(("/bloc_freezed"));
                    },
                    child: Container(
                        child: Center(
                      child: Text("Freezed Bloc"),
                    )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  height: MediaQuery.of(context).size.width * 0.465,
                  width: MediaQuery.of(context).size.width * 0.465,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("/pagina");
                    },
                    child: Container(
                      child: Center(
                        child: Text("Contact"),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    height: MediaQuery.of(context).size.width * 0.465,
                    width: MediaQuery.of(context).size.width * 0.465,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                          child: Text("Contact Cubit"),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
