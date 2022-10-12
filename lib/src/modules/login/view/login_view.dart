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
    return SingleChildScrollView(
      child: Scaffold(
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
                  const SizedBox(height: 40.0),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: TextField(
                        onChanged: (value) {
                          controller.changeEmail(value);
                        },
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter e-mail',
                          fillColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: TextField(
                        onChanged: (value) {
                          controller.changeEmail(value);
                        },
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter password',
                          hoverColor: Colors.black,
                          fillColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff48C2DC),
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .80,
                    height: 66.0,
                    child: ElevatedButton(
                      onPressed: () => Modular.to.pushNamed('/login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff48C2DC),
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
