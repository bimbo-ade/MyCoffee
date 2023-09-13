import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color(0xFFF9F9F9), // First color
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF131313), Color(0xFF2C2C2C)],
                ),
              ),
              width: double.infinity,
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/image.jpg'),
                          radius: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            // controller: _searchController,
                            decoration: InputDecoration(
                                labelText: 'Search',
                                hintText: 'Search...',
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
