import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login_icon.png",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  GlobalTextField(
                    label: "Name",
                    hint: "Enter your name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlobalTextField(
                    label: "Email",
                    hint: "Enter your email",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlobalTextField(
                    label: "Password",
                    hint: "Enter your password",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlobalTextField(
                    label: "Confirm Password",
                    hint: "Enter your password again",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Sign Up"))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class GlobalTextField extends StatelessWidget {
  const GlobalTextField({super.key, required this.label, required this.hint});
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
