import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:formulario_de_validacao/bloc/bloc_bloc.dart';
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
  String nome = "";
  String email = "";
  String senha = "";
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
      body: BlocBuilder<FormsBloc,FormsStates>(
        builder: (context,state) {
          return Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              children: [
                Card(
                  elevation: 20.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.575,
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
                          fillColor: Colors.white,
                          label: Text("Digite o seu nome:"),
                          labelStyle: TextStyle(color: Colors.blue)
                        ),
                        validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                        controller: _nomeController,
                        onSaved: (savedItem)=> nome = savedItem!,
                        style: const TextStyle(color: Colors.black),
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
                          fillColor: Colors.white,
                          label: Text("Digite o seu email:"),
                          labelStyle: TextStyle(color: Colors.blue)
                        ),
                        validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                        controller: _emailController,
                        onSaved: (savedItem)=> email = savedItem!,
                        style: const TextStyle(color: Colors.black),
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
                          fillColor: Colors.white,
                          label: Text("Digite a sua senha"),
                          labelStyle: TextStyle(color: Colors.blue)
                        ),
                        validator: (inputvalue) => (inputvalue == null || inputvalue.isEmpty) ? "Este campo se encontra vazio":null,
                        controller: _senhaController,
                        onSaved: (savedItem)=> senha = savedItem!,
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                      Center(
                        child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  if(formKey.currentState!.validate()){
                                    formKey.currentState!.save();
                                    _nomeController.clear();
                                    _senhaController.clear();
                                    _emailController.clear();
                                  }
                                });
                              },
                            child: const Text("Enviar"),),
                      ),
                  ],),
                  ),
                ),
              SingleChildScrollView(
                child:Column(children: [
                  Text(nome),
                  Text(email),
                  Text(senha),
                ])
              )
              ],
            ),
          );
        }
      )
    );
  }
}
