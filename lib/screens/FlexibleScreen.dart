import 'package:flutter/material.dart';

class FlexsibleScreen extends StatefulWidget {
  const FlexsibleScreen({super.key});

  @override
  State<FlexsibleScreen> createState() => _FlexsibleScreenState();
}

class _FlexsibleScreenState extends State<FlexsibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              height: 400,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              height: 200,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "2",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
