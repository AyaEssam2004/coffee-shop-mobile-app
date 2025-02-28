import 'package:flutter/material.dart';
import 'package:my_project/custom_widgets/category_selector.dart';
import 'package:my_project/custom_widgets/coffee_grid.dart';

class Home extends StatelessWidget {
  Home({super.key});

  static String id = "HomeScreen";
  final List<String> categories = [
    "All Coffee",
    "Macchiato",
    "Latte",
    "Americano",
    "Espresso",
    "Mocha"
  ];

  final List<Map<String, dynamic>> coffeeItems = [
    {
      "name": "Caffe Mocha",
      "subTitle": "Deep Foam",
      "price": 4.53,
      "image": "assets/images/1.jpeg",
      "rating": 4.8,
    },
    {
      "name": "Flat White",
      "subTitle": "Espresso",
      "price": 3.53,
      "image": "assets/images/2.jpeg",
      "rating": 4.8,
    },
    {
      "name": "Latte",
      "subTitle": "Steamed Milk",
      "price": 4.00,
      "image": "assets/images/3.jpeg",
      "rating": 4.5,
    },
    {
      "name": "Americano",
      "subTitle": "Rich Espresso",
      "price": 2.99,
      "image": "assets/images/4.png",
      "rating": 4.3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background sections
        Column(
          children: [
            // Dark background
            Container(
              height: 300,
              width: double.infinity,
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
            // White section (for coffee list)
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 239, 239, 239),
              ),
            ),
          ],
        ),

        // Texts and Search Bar
        Positioned(
          top: 80,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(
                  color: Color.fromARGB(179, 132, 132, 132),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Bilzen, Tanjungbalai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 22,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Search Bar
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 47, 47, 47),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search coffee',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.white70),
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 50,
                width: 50,
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

        // Promo Image
        Positioned(
          top: 220,
          left: 20,
          right: 20,
          child: Image.asset(
            'assets/images/4.png',
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 395, // Adjust position as needed
          left: 0,
          right: 0,
          child: CategorySelector(
            categories: categories,
            onCategorySelected: (selectedCategory) {
              print("Selected Category: $selectedCategory");
            },
          ),
        ),
        Positioned(
          top: 450,
          left: 0,
          right: 0,
          bottom: 70,
          child: SingleChildScrollView(
            child: CoffeeGrid(coffeeItems: coffeeItems),
          ),
        ),
      ],
    );
  }
}
