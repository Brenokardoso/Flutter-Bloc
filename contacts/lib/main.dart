import 'package:contacts/features/contacts/list/contacts_list_page.dart';
import 'package:contacts/home/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Contatos",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/" : (_)=>const Homepage(),
        "/contacts":(_) => const ContactsListPage(),
      },
      initialRoute: "/",
    );
  }
}