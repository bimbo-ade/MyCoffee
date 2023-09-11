import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SafeArea(
         child: Column(
          children: [
            const Text('heh'),
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.ice_skating),


            ),
          ],

        ),

      ),

          
    );
  }
}
