// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';
import 'dart:convert';

class ContactModel{
  final int? id;
  final String nome;
  final String email;

  @required
  ContactModel({
  required this.id,
  required this.email,
  required this.nome
  });

  Map<String,dynamic> toMap(){
    return {
      "id" : id,
      "nome" : nome,
      "email" : email
    };
  }

  factory ContactModel.fromMap(Map<String,dynamic> map){
    return ContactModel(
      id: map["id"] ?? null, 
      email: map["email"] ?? "", 
      nome:map["nome"] ?? "",
    );
  }

  String toJson() => json.encode(toMap());
  factory ContactModel.fromJson(String source) => ContactModel.fromMap(json.decode(source));
}