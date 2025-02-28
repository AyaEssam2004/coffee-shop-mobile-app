import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              // Background gradient
              Container(
                width: double.infinity,
                height: 327,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 18, 18, 18),
                      Color.fromARGB(255, 57, 57, 57),
                    ],
                  ),
                ),
              ),

              // "Location" text
              Positioned(
                top: 80,
                left: 20,
                child: Text(
                  'Location',
                  style: TextStyle(
                    color: Color.fromARGB(179, 132, 132, 132),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // "Bilzen, Tanjungbalai" text with a dropdown arrow
              Positioned(
                top: 110,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      'Bilzen, Tanjungbalai',
                      style: TextStyle(
                        color: Color.fromARGB(172, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(172, 255, 255, 255),
                      size: 22,
                    ),
                  ],
                ),
              ),

              // Search bar and filter button
              Positioned(
                top: 160,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    // Search bar
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 47, 47, 47),
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search coffee',
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                            prefixIcon:
                                Icon(Icons.search, color: Colors.white70),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),

                    // Filter button
                    Container(
                      height: 60,
                      width: 60,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFC67C4E),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.tune, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 20,
                right: 20,
                child: Image.asset(
                  'assets/images/4.png',
                  //width: MediaQuery.of(context).size.width *
                  //0.9, // Adjusts width dynamically
                  // fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
