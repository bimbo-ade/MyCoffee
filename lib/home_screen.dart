import 'package:flutter/material.dart';
import 'package:mydemo/tab_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 23, 23, 23),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
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
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 54, 54, 54),
                              borderRadius: BorderRadius.circular(6)),
                          child: const TextField(
                            // controller: _searchController,
                            decoration: InputDecoration(
                                hintText: 'Search..',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 126, 126, 126),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color.fromARGB(255, 126, 126, 126),
                                  size: 25,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Container(
              //   width: 340,
              //   height: 140,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     image: const DecorationImage(
              //       image: AssetImage('assets/promo.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.black.withOpacity(0.3),
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: TabsIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
