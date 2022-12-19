import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  Widget _stackpage() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.white30,
        ),
        Positioned(
          child: Container(
            child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Twemoji_1f600.svg/1200px-Twemoji_1f600.svg.png"),
          ),
        ),
        Positioned(
          top: 1,
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ),
        Positioned(
          bottom: 1,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),
        ),
        Positioned(
          bottom: 1,
          left: 50,
          child: IconButton(
            icon: const Icon(Icons.comment),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _stackpage(),
              const SizedBox(
                height: 10,
              ),
              _stackpage()
            ],
          ),
        ),
      ),
    );
  }
}
