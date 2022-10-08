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
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset('assets/image/logo.png'),
                  ),
                  const Text(
                    'Get your buisness with MyApp',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vulputate volutpat cursus euismod nunc sapien. Dictum id hac feugiat laoreet.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
