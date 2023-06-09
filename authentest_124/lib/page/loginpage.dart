import 'package:authentest_124/page/registerpage.dart';
import 'package:authentest_124/page/userpage.dart';
import 'package:flutter/material.dart';

import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
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
                      })),
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
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("OK");
                          AuthService.loginUser(_emailController.text,
                                  _passwordController.text)
                              .then((value) {
                            if (value == 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserPage(),
                                  ));
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => SuccessPage(),
                              //     ));
                            }
                          });
                        }
                      },
                      child: const Text("Login")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ));
                      },
                      child: const Text("Regiter")),
                ],
              ))),
    );
  }
}
