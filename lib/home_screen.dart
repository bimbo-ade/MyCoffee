import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[900],
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 63, 22, 8), // First color
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: Color.fromARGB(255, 247, 247, 247), // Second color
              width: double.infinity,
              height: 240,
              child: const Center(
                child: Text(
                  'Hello, Two-Colored Background!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        )

        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: SafeArea(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         IconButton(
        //           onPressed: () {
        //             Navigator.pop(context);
        //           },
        //           icon: const Icon(
        //             Icons.arrow_back,
        //             color: Colors.white,
        //           ),
        //         ),
        //         const CircleAvatar(
        //           backgroundImage: AssetImage('assets/image.jpg'),
        //           radius: 20,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
