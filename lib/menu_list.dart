import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  MenuList({super.key});
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 61, 61, 61),
            borderRadius: BorderRadius.circular(5.0),
          ),
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('image'),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0, // Text size
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('fghj'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
