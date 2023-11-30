part of "bloc_bloc.dart";

abstract class FormsEvents{}

class FormsEventsAddForms extends FormsEvents{
  Map<String,dynamic> itens;
  FormsEventsAddForms(String nome,String email,String senha) : itens = {
    "nome" : nome,
    "email" : email,
    "senha" : senha,
  };
}