import 'package:flutter/material.dart';
import 'package:mydemo/list_menu.dart';

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
              //bg color underneath
              color: const Color.fromARGB(255, 240, 240, 240), // First color
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
              height: 280,
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
            ),
            Positioned(
              top: 200,
              left: 37,
              child: Container(
                width: 320,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/promo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(top: 400, left: 20, child: ListMenu()),
          ],
        ),
      ),
    );
  }
}
