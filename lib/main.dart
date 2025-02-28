import 'package:flutter/material.dart';
import 'screens/home.dart'; // Import Home screen
import 'screens/detail.dart'; // Import Detail screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Detail.id: (context) => const Detail(),
      },
    );
  }
}
