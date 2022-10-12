import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image/boll.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
             
            ],
          ),
        ],
      ),
    );
  }
}
