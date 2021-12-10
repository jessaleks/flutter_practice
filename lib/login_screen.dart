import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loggedIn = false;
  late String name;

  final _nameController = TextEditingController();
  // ignore: unused_field
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
          child: loggedIn ? _buildSuccess() : _buildLoginForm(),
        ));
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: "Runner"),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Enter the runner's name";
                    }
                    return null;
                  })
            ],
          )),
    );
  }

  Widget _buildSuccess() {
    return Column();
  }
}
