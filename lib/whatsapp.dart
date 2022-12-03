// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:money_manager/screens/contacts.dart';
import 'package:money_manager/screens/create_contact.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Contacts(),
    );
  }
}
