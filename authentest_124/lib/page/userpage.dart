import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String _email = "";
  String _password = "";
  String _username = "";
  String _tel = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: SafeArea(
          child: Form(
              child: ListView(
        children: [
          Row(
            children: [Icon(Icons.add_a_photo)],
          )
        ],
      ))),
    );
  }
}
