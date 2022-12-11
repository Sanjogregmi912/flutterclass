import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Button one"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(" Button two"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(" Button  three"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
