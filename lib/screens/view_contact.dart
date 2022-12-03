// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:money_manager/db/model/contact_model.dart';
import 'package:money_manager/screens/create_contact.dart';
import 'package:money_manager/db/db_functions/db_functions.dart';

class ViewContact extends StatelessWidget {
  final name;
  final lname;
  final mobile;
  final email;

  const ViewContact({
    super.key,
    required this.name,
    this.lname,
    this.mobile,
    this.email,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View Contact"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name),
                SizedBox(
                  height: 20,
                ),
                Text(lname),
                SizedBox(
                  height: 20,
                ),
                Text(mobile),
                SizedBox(
                  height: 20,
                ),
                Text(email),
                SizedBox(
                  height: 20,
                ),
              ],
            )));
  }
}
