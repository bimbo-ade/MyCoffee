import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 9,
      child: TabBar(
        isScrollable: true, // Enable scrolling for tabs.
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
