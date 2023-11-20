// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_list_no_auto/pages/brnoshop/bloc/brnoshop_bloc.dart';
import 'package:task_list_no_auto/pages/brnoshop/brnoshop_home_page.dart';
import 'package:task_list_no_auto/pages/home_page/home_page.dart';
import 'package:task_list_no_auto/pages/shop_list/bloc/shop_list_bloc.dart';
import 'package:task_list_no_auto/pages/shop_list/shop_list_home_page.dart';
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
        "/brnoshop": (_) => BlocProvider(
              create: (context) => BrnoShopBloc(),
              child: BrnoShopHomePage(),
            ),
        "/shop_list": (_) => BlocProvider<ShopListBloc>(
              create: (_) => ShopListBloc(),
              child: ShopListHomePage(),
            )
      },
      initialRoute: "/",
    );
  }
}
