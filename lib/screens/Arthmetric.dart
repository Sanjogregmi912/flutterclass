import 'package:flutter/material.dart';

class Arthmetric extends StatefulWidget {
  const Arthmetric({super.key});

  @override
  State<Arthmetric> createState() => _ArthmetricState();
}

class _ArthmetricState extends State<Arthmetric> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arthmetric Outcome"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(" The result  is  : $value"),
          ],
        ),
      ),
    );
  }
}
