import 'package:flutter/material.dart';
import 'package:lab08/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage>{
  // declare varibles
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwodController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(child: Form(
        key: _formkey
        child: Padding(padding: const EdgeInsets.all(32.0),
        child: ListView(
          children:[
            TextFormField(
      
                  controller: _passwodController,
                  decoration: const InputDecoration(labelText: "Email"),
                ),

                TextFormField(
                  controller: _passwodController,
                  decoration: const InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                  ElevatedButton(onPressed: () {}, child: const Text('"Login')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const RegisterPage(),
  ))
}
                  )
]
  }
