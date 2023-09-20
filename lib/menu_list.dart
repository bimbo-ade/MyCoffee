import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  MenuList({super.key});
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.dangerous),
          title: Text(items[index]),
        );
      },
    );
  }
}
