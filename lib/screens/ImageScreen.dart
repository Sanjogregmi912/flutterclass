import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 10),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Image.network(
                    "data:image/jpeg;base64,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"),
              )),
        ),
      ),
    );
  }
}
