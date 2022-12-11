import 'package:flutter/material.dart';

class FlexContainer extends StatefulWidget {
  const FlexContainer({super.key});

  @override
  State<FlexContainer> createState() => _FlexContainerState();
}

class _FlexContainerState extends State<FlexContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and columns"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Container One",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          "Container two",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "Container three",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Container One",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Container two",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Container three",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
