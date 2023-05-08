import 'package:flutter/material.dart';
import 'package:todo_application/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(33, 100, 20, 0),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(70, 50, 70, 0),
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
                  padding: const EdgeInsets.fromLTRB(70, 30, 70, 0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your name";
                      }
                      if (!RegExp("^[A-Z]&#39;?[- a-zA-Z]( [a-zA-Z])*")
                          .hasMatch(value)) {
                        return "Enter only letter";
                      }
                      return null;
                    },
                    // onSaved: (email) {
                    //   _email = email!;
                    // },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(70, 30, 70, 0),
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
                  padding: const EdgeInsets.fromLTRB(70, 30, 70, 0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'confirm Password'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter password";
                      }
                      if (passwordController.text !=
                          confirmpasswordController.text) {
                        return "please re-enter password";
                      }
                      print(passwordController.text);
                      print(confirmpasswordController.text);
                      return null;
                    },

                    // onSaved: (password) {
                    //   _password = password!;
                    // },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 80, 100, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // nameController;
                      // emailController;
                      // passwordController;
                      if (_formkey.currentState!.validate()) {
                        return;
                      } else {
                        return;
                      }
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
