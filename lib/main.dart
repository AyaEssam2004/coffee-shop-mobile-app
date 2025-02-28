import 'package:flutter/material.dart';
import 'package:my_project/screens/main_screen.dart';
import 'package:my_project/screens/login';
import 'screens/home.dart';
import 'screens/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        MainScreen.id: (context) => const MainScreen(),
        Home.id: (context) => Home(),
        LoginScreen.id: (context) => LoginScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == Detail.id) {
          final coffeeItem = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => Detail(coffeeItem: coffeeItem),
          );
        }
        return null; // If route not found, return null
      },
    );
  }
}
