// ignore_for_file: unnecessary_null_comparison, unused_import

import 'package:flutter/material.dart';
import 'package:money_manager/db/db_functions/db_functions.dart';
import 'package:money_manager/db/model/contact_model.dart';
import 'package:money_manager/screens/contacts.dart';

class CreateContact extends StatelessWidget {
  CreateContact({
    super.key,
  });

  // int _counter = 0;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();

  // Error Message
  final String errField = "Empty Field";

  // Form Key
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Contact"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextFormField(
                controller: firstNameController,
                decoration: const InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return errField;
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return errField;
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: numberController,
                decoration: const InputDecoration(
                  hintText: "Mobile",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return errField;
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return errField;
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton.icon(
                onPressed: onDoneButtonPressed,
                icon: const Icon(Icons.add),
                label: const Text("Done"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Edit Contact',
        child: const Icon(Icons.edit),
      ),
    );
  }

  Future<void> onDoneButtonPressed() async {
    // Get all User Inputs
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final mobile = numberController.text.trim();
    final email = emailController.text.trim();

    // Create an Object of ContactModel & pass this Value
    final newContact = ContactModel(
      firstName: firstName,
      lastName: lastName,
      mobile: mobile,
      email: email,
    );
    addNewContact(newContact);
  }
}
