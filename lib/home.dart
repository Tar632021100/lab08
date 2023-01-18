import 'package:flutter/material.dart';
import 'package:lab08/main.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupSimple = '';
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: _controller1,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                hintText: "please enter email",
                hintStyle: TextStyle(color: Colors.amber),
              ),
            ),
            TextFormField(
              controller: _controller2,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: "password",
                hintText: "please enter password",
                hintStyle: TextStyle(color: Color.fromARGB(255, 7, 164, 255)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_controller1.text);
                  print(_controller2.text);
                }
              },
              child: Text('Login'),
            ),
          ]),
        ));
  }
}
