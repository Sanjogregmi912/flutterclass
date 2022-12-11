import 'package:flutter/material.dart';

class RadioArthmetric extends StatefulWidget {
  const RadioArthmetric({super.key});

  @override
  State<RadioArthmetric> createState() => _RadioArthmetricState();
}

class _RadioArthmetricState extends State<RadioArthmetric> {
  final _firstcontroller = TextEditingController();
  final _secondcontroller = TextEditingController();

  final _globalKey = GlobalKey<FormState>();

  int result = 0;

  void _add() {
    setState(() {
      int value1 = int.parse(_firstcontroller.text);
      int value2 = int.parse(_secondcontroller.text);

      result = value1 + value2;
    });
    Navigator.pushNamed(context, '/arthmetricscreen', arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Two Numbers"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Form(
          key: _globalKey,
          child: Column(children: [
            TextFormField(
              controller: _firstcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter first number",
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
              keyboardType: TextInputType.number,
              controller: _secondcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Second number",
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
            RadioListTile(
                title: const Text("Add"),
                value: _firstcontroller.text,
                groupValue: "Add",
                onChanged: (value) {
                  setState(() {});
                }),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    _add();
                  }
                },
                child: const Text(
                  " Add two number",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
