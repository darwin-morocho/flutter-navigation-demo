import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          color: Colors.blue,
          child: const Text('Sign In with Google'),
        ),
      ),
    );
  }
}
