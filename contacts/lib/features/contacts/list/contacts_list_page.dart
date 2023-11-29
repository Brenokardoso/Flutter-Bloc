import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
const ContactsListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Contacts List Page"),),),
      body : const SingleChildScrollView()
    );
  }
}