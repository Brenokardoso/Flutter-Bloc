// ignore_for_file: unnecessary_null_in_if_null_operators

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ContactModel {
  final String? id;
  final String? name;
  final String? email;

  ContactModel({
    this.id,
    this.name,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> mapa) {
    return ContactModel(
      id: mapa["id"] ?? "null",
      name: mapa["name"] ?? "null",
      email: mapa["email"] ?? "null",
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactModel.fromJson(String values) =>
      ContactModel.fromMap(json.decode(values));
}
