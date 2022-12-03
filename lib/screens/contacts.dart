import 'package:flutter/material.dart';
import '../db/db_functions/db_functions.dart';
import '../db/model/contact_model.dart';
import 'create_contact.dart';
import 'view_contact.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ValueListenableBuilder(
        valueListenable: contactModelNotifier,
        builder: (
          BuildContext ctx,
          List<ContactModel> contactModel,
          Widget? child,
        ) {
          return ListView.separated(
            itemBuilder: ((ctx, index) {
              final data = contactModel[index];
              return ListTile(
                title: Text(data.firstName + " " + data.lastName),
                subtitle: Text(data.mobile),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) {
                    return ViewContact(
                      name: data.firstName,
                      lname: data.lastName,
                      mobile: data.mobile,
                      email: data.email,
                    );
                  })));
                },
              );
            }),
            separatorBuilder: ((ctx, index) {
              return const Divider();
            }),
            itemCount: contactModel.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext ctx) {
                return CreateContact();
              },
            ),
          );
        },
        tooltip: 'New Contact',
        child: const Icon(Icons.contact_phone),
      ),
    );
  }
}
