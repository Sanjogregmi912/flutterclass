import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), (() {
      Navigator.pushReplacementNamed(context, "/homepage");
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Center(
              child: SizedBox(
                child: Text("Splash Screen"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: const CircularProgressIndicator(
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
