import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});
  static String id = "Detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:
            const Text('Detail Screen', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
