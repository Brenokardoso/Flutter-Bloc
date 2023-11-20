// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unnecessary_null_comparison, prefer_is_not_empty, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_list_no_auto/pages/shop_list/bloc/shop_list_bloc.dart';

class ShopListHomePage extends StatefulWidget {
  const ShopListHomePage({super.key});

  @override
  State<ShopListHomePage> createState() => _ShopListHomePageState();
}

class _ShopListHomePageState extends State<ShopListHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var _controllerShop = TextEditingController();

  @override
  void dispose() {
    _controllerShop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Compras"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "HomePage"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Pagamento")
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 218, 234),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Center(
                          child: Text(
                            "Digite os itens para serem adicionados:",
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: _controllerShop,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: "Item para ser adicionado",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      style: TextStyle(color: Colors.black),
                      validator: (value) => (value!.isEmpty || value == null)
                          ? "O valor é nulo,digite algo válido"
                          : null,
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          var item = _controllerShop.text;
                          BlocProvider.of<ShopListBloc>(context)
                              .add(ShopListEventAdd(item));
                        }
                        _controllerShop.clear();
                      },
                      child: Text("Add"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
