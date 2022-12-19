import 'package:flutter/material.dart';

class ButtomNavigationScreen extends StatefulWidget {
  const ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [],
      ),
    );
  }
}
