// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class intrest extends StatefulWidget {
  const intrest({super.key});

  @override
  State<intrest> createState() => _intrestState();
}

class _intrestState extends State<intrest> {
  final firstcontroller = TextEditingController();
  final secondcontroller = TextEditingController();
  final thirdcontroller = TextEditingController();
  double result = 0;

  final _key = GlobalKey<FormState>();

  void _interest() {
    setState(() {
      int value1 = int.parse(firstcontroller.text);
      int value2 = int.parse(secondcontroller.text);
      int value3 = int.parse(thirdcontroller.text);

      result = ((value1 * value2 * value3) / 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple interest"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(children: [
            TextFormField(
              controller: firstcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Principle ",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter any value";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: secondcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Time ",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter any value";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: thirdcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Rate ",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter any value";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    _interest();
                  }
                },
                child: const Text(
                  " calculate ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              child: Text(
                "Result: $result ",
                style: const TextStyle(fontSize: 20),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
