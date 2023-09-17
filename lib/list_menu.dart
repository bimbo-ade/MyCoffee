import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 9,
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.black,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.red, width: 2)),
        labelStyle: TextStyle(fontSize: 20),
        tabs: [
          Tab(text: 'Tab 1'),
          Tab(text: 'Tab 2'),
          Tab(text: 'Tab 3'),
          Tab(text: 'Tab 1'),
          Tab(text: 'Tab 2'),
          Tab(text: 'Tab 3'),
          Tab(text: 'Tab 1'),
          Tab(text: 'Tab 2'),
          Tab(text: 'Tab 3'),
          // Add more tabs as needed.
        ],
      ),
    );
  }
}
