import 'package:flutter/material.dart';
import 'package:flutter_practice/stopwatch.dart';

class LoginScreen extends StatefulWidget {
  static const route = 'login';
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
          child: _buildLoginForm(),
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
                  }),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Enter the runner\'s email.';
                  }

                  final regex = RegExp('[^@]+@[^.]+..+');
                  if (!regex.hasMatch(text)) {
                    return 'Enter a valid email';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Continue'),
                onPressed: _validate,
              ),
            ],
          )),
    );
  }

  void _validate() {
    final form = _formKey.currentState;
    if (!form!.validate()) {
      return;
    }

    final name = _nameController.text;

    // pushReplacement so that you can go back
    Navigator.of(context)
        .pushReplacementNamed(StopWatch.route, arguments: {name: name});
  }
}
