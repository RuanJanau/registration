import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/image/boll.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Center(
                  child: Image.asset('assets/image/logo.png'),
                ),
                const Text(
                  'Get your buisness with MyApp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vulputate volutpat cursus euismod nunc sapien. Dictum id hac feugiat laoreet.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 70),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .80,
                      height: 66.0,
                      child: ElevatedButton(
                        onPressed: () => (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff48C2DC),
                          shape: const RoundedRectangleBorder(),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
