import 'package:authentest_124/page/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _telController = TextEditingController();

  String type = "";
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: SafeArea(
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Text("Email"),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Enter Email please!";
                      }
                      return null;
                    }),
                  ),
                  Text("Password"),
                  TextFormField(
                    controller: _passwordController,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Enter Password please!";
                      }
                      return null;
                    }),
                  ),
                  Text("Username"),
                  TextFormField(
                    controller: _usernameController,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Enter username please!";
                      }
                      return null;
                    }),
                  ),
                  Text("User Tel."),
                  TextFormField(
                    controller: _telController,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Enter tel please!";
                      }
                      return null;
                    }),
                  ),
                  Text("ประเภทผู้ใช้งาน"),
                  RadioListTile(
                    title: Text("อาจารย์"),
                    value: "instructor",
                    groupValue: type,
                    onChanged: (value) {
                      setState(() {
                        type = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("เจ้าหน้าที่"),
                    value: "officer",
                    groupValue: type,
                    onChanged: (value) {
                      setState(() {
                        type = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("นิสิต"),
                    value: "student",
                    groupValue: type,
                    onChanged: (value) {
                      setState(() {
                        type = value!;
                      });
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("OK");
                          print(_emailController.text);

                          AuthService.registerUser(_emailController.text,
                                  _passwordController.text)
                              .then((value) {
                            if (value == 1) {
                              Navigator.pop(context);
                            }
                          });
                        }
                      },
                      child: const Text("Register")),
                ],
              ))),
    );
  }
}
