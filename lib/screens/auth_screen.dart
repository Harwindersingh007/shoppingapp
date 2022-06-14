import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/common_widgets.dart';
import 'package:shopping_app/widgets/custom_button.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 215, 215),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            tileColor: _auth == Auth.signup
                ? Colors.white
                : Color.fromARGB(255, 220, 215, 215),
            leading: Radio(
                value: Auth.signup,
                activeColor: Colors.orange,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }),
            title: Text(
              "Create Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          if (_auth == Auth.signup)
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                    CustomTextfield(
                      controller: _nameController,
                      hintText: "Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _emailController,
                      hintText: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _passwordController,
                      hintText: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onTap: () {},
                      text: 'SignUp',
                    )
                  ],
                ),
              ),
            ),
          ListTile(
            tileColor: _auth == Auth.signin
                ? Colors.white
                : Color.fromARGB(255, 220, 215, 215),
            leading: Radio(
                value: Auth.signin,
                activeColor: Colors.orange,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }),
            title: Text(
              "Sign_In.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          if (_auth == Auth.signin)
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Form(
                key: _signInFormKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _emailController,
                      hintText: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      controller: _passwordController,
                      hintText: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onTap: () {},
                      text: 'Sign-In',
                    )
                  ],
                ),
              ),
            ),
        ],
      )),
    );
  }
}
