import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase/signup_page.dart';
import 'firebase_options.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final result =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: 'bisma@gmail.com',
                password: 'sidomukti81',
              );
            } on Exception catch (e) {
              print(e);
            }
          },
          child: const Text('Test'),
        ),
      ),
    );
  }
}
