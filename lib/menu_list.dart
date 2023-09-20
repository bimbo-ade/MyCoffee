import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 1'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 2'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 3'),
        ),
        // Add more list items as needed
      ],
    );
  }
}
