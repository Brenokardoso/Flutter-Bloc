// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_list_no_auto/pages/home_page/home_page.dart';
import 'package:task_list_no_auto/pages/task_list/task_list_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (_) => HomePage(),
        "/task_list": (_) => TaskListHomePage(),
      },
      initialRoute: "/",
    );
  }
}
