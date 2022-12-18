import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  Widget _button(String name) {
    return ElevatedButton(
      onPressed: () {
        Fluttertoast.showToast(
          msg: name,
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black,
          fontSize: 16.0,
        );
      },
      child: Text(name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        padding: const EdgeInsets.all(7),
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          for (int i = 1; i <= 10; i++) ...{_button(" button  $i")}
        ],
      ),
    );
  }
}
