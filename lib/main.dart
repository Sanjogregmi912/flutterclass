import 'package:flutter/material.dart';
import './screens/addition.dart';
import './screens/interest.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyScreen(),
        '/siscreen': (context) => const intrest(),
      },
    ),
  );
}
