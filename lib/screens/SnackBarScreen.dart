import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  _showsnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Snack bar"),
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.amberAccent,
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
          textColor: Colors.red,
        ),
      ),
    );
  }

  _showtoast() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("Show Snack Bar"),
              onPressed: () => {_showsnackbar()},
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "This is a toast",
                  backgroundColor: Colors.red,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.black,
                  fontSize: 16.0,
                );
              },
              child: const Text("Show Toast"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                MotionToast(
                  icon: Icons.access_alarm,
                  description: const Text("Example of custom created toast"),
                  position: MotionToastPosition.center,
                  primaryColor: Colors.red,
                ).show(context);
              },
              child: const Text("Show motion toast"),
            )
          ],
        ),
      ),
    );
  }
}
