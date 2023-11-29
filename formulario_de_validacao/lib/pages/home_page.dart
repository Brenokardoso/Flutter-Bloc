import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  String? nome;
  String? email;
  String? senha;
  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Center(
        child:Text("Formulário",
          style: TextStyle(
            color: Colors.black),),),
            backgroundColor: Colors.white
      ,),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Card(
              elevation: 20.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 214, 206, 206),
                ),
              child: Column(
                children: [
                  const Text("Nome:",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white
                    ),
                    validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                    controller: _nomeController,
                    onSaved: (savedItem)=> nome = savedItem,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  const Text("E-mail:",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white
                    ),
                    validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                    controller: _emailController,
                    onSaved: (savedItem)=> email = savedItem,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  const Text("Senha:",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white
                    ),
                    validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                    controller: _senhaController,
                    onSaved: (savedItem)=> senha = savedItem,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  Row(
                    children: [
                      Flexible(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width * 1, 35))),
                          onPressed: (){
                           setState(() {
                              if(formKey.currentState!.validate()){
                              formKey.currentState!.save();
                              _nomeController.clear();
                              _emailController.clear();
                              _senhaController.clear();
                            }
                           });
                          }, 
                          child: const Text("Enviar")
                        ),
                      ),
                    ],
                  ),
              ],),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 63, 148, 221),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text("Nome: $nome"),
                  Text("E-mail: $email"),
                  Text("Senha: $senha"),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
