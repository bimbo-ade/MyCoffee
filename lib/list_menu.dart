import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: const TabBar(
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Tab 1 Content')),
                  Center(child: Text('Tab 2 Content')),
                  Center(child: Text('Tab 3 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
    // return const TabBar(
    //   isScrollable: true,
    //   labelColor: Color(0xFF230C02),
    //   unselectedLabelColor: Colors.black,
    //   indicator: UnderlineTabIndicator(
    //       borderSide: BorderSide(color: Color(0xFF230C02), width: 2)),
    //   labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //   tabs: [
    //     Tab(text: ' Hot Coffee'),
    //     Tab(text: ' Cappuccino'),
    //     Tab(text: ' Latte'),
    //     Tab(text: 'Espresso'),
    //     Tab(text: 'Americano'),
    //     Tab(text: 'Black Coffee'),
    //   ],

      //      TabBarView(
      //     children: [
      //       Text(' Hot Coffee'),
      //       Text(' Cappuccino'),
      //       Text(' Latte'),
      //       Text('Espresso'),
      //       Text('Americano'),
      //       Text('Black Coffee'),

      // ],
      // ),
    //);
//   }
// }
