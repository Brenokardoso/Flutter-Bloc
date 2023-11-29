import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contatos"),
      ),
      body:Center(child:Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pushNamed("/contacts");
          },
          child: const Center(child : Text("Go to contacts"))
        , ),
      ),
    )
  );
}
}