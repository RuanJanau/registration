import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 255, 255, 255),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/image/boll.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Welcome back!',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 40.0),
                Image.asset('assets/image/emp.png'),
                const SizedBox(height: 30.0),
                Container(
                  height: 64.0,
                  width: MediaQuery.of(context).size.width * 0.86,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      controller.changeEmail(value);
                    },
                    autofocus: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 172, 172, 169),
                      ),
                      hintText: 'Email or Phone number',
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
