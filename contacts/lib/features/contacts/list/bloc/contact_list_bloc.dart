import 'package:bloc/bloc.dart';
part "contact_list_event.dart";
part "contact_list_state.dart";

class ContactListBloc extends Bloc<ContactListEvent,ContactListState>{
  ContactListBloc() : super(ContactListStateInitial());
} 