import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: ElevatedButton(
                child: const Text("Open Columns"),
                onPressed: () {
                  Navigator.pushNamed(context, "/columns");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Open Addition"),
                onPressed: () {
                  Navigator.pushNamed(context, "/addition");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Open Radio Arthmentric"),
                onPressed: () {
                  Navigator.pushNamed(context, "/radioarthmetric");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("list tile"),
                onPressed: () {
                  Navigator.pushNamed(context, "/listtilescreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Conatiner Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/containerscreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Iamge Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/imagescreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Register Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/registerscreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Flexible Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/flexiblescreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Snack Bar"),
                onPressed: () {
                  Navigator.pushNamed(context, "/snackbarscreen");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("flex Container"),
                onPressed: () {
                  Navigator.pushNamed(context, "/flexconatiner");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text("card Screen"),
                onPressed: () {
                  Navigator.pushNamed(context, "/cardscreen");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
