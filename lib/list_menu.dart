import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 6,
      child: TabBar(
        isScrollable: true,
        labelColor: Color(0xFF230C02),
        unselectedLabelColor: Colors.black,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xFF230C02), width: 2)),
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        tabs: [
          Tab(text: ' Hot Coffee'),
          Tab(text: ' Cappuccino'),
          Tab(text: ' Latte'),
          Tab(text: 'Espresso'),
          Tab(text: 'Americano'),
          Tab(text: 'Black Coffee'),
        ],
      ),
      // TabBarView(children: [
      //   Text(' Hot Coffee'),
      //   Text(' Cappuccino'),
      //   Text(' Latte'),
      //   Text('Espresso'),
      //   Text('Americano'),
      //   Text('Black Coffee'),
      // ],)
    );
  }
}
