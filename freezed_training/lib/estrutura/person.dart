import 'package:freezed_annotation/freezed_annotation.dart';
part "person.freezed.dart";

void main(){
 
}

@freezed
class Person{
  factory Person(String? nome,int? idade) = _Person;
}

