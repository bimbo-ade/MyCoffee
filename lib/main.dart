import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Coffee so good, your taste buds will love it.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                icon: const Icon(
                  // <-- Icon
                  Icons.arrow_forward,
                  size: 24.0,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF230C02),
                    padding: const EdgeInsets.fromLTRB(
                        40.0, 15.0, 40.0, 15.0) // Background color
                    ),
                label: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ), // <-- Text
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          )),
    );
  }
}
