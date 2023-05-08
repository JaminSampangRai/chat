// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_application/SignUpp.dart';
// import 'package:todo_application/chatbox.dart';
import 'package:todo_application/chatusers.dart';
// import 'package:todo_application/login.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _SignupState();
}

// class User {
//   final String email;
//   final String password;

//   User(this.email, this.password);

//   User.fromJson(Map<String, dynamic> json)
//       : email = json['jaminsampang90@gmail.com'],
//         password = json['12345'];

//   Map<String, dynamic> toJson() => {
//         'jaminsampang90@gmail.com': email,
//         '12345': password,
//       };
// }

class _SignupState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // late String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(33, 150, 20, 0),
                child: const Text(
                  "Login In",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(70, 70, 70, 0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                  // onSaved: (email) {
                  //   _email = email!;
                  // },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(70, 50, 70, 0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter password";
                    }
                    if (value.length < 5) {
                      return "Enter at least 5 characters";
                    }
                    return null;
                  },
                  // onSaved: (password) {
                  //   _password = password!;
                  // },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chatuser()));
                    // User(emailController.text, passwordController.text);
                    // ignore: avoid_print
                    // print(emailController);
                    // // ignore: avoid_print
                    // print(passwordController);

                    if (_formkey.currentState!.validate()) {
                      return;
                    } else {
                      return;
                    }

                    // print(nameController);
                    // print(passwordController);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "Create Account",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
