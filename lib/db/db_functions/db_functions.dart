import 'package:flutter/material.dart';
import '../model/contact_model.dart';

ValueNotifier<List<ContactModel>> contactModelNotifier = ValueNotifier([]);

addNewContact(ContactModel contactModel) {
  contactModelNotifier.value.add(contactModel);
  contactModelNotifier.notifyListeners();
}
