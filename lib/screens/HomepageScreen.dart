import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/TimeAndDateScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget _homepagebutton(String buttomname, String routes) {
    return SizedBox(
      child: ElevatedButton(
        child: Text(buttomname),
        onPressed: () {
          Navigator.pushNamed(context, routes);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
          child: GridView.count(
        padding: const EdgeInsets.all(7),
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          // _homepagebutton("Time and date", "/timeanddate"),

          SizedBox(
            child: ElevatedButton(
              child: const Text("Opentime and date"),
              onPressed: () {
                Navigator.pushNamed(context,"/timeanddate");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Open Columns"),
              onPressed: () {
                Navigator.pushNamed(context, "/columns");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Open Addition"),
              onPressed: () {
                Navigator.pushNamed(context, "/addition");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Open Radio Arthmentric"),
              onPressed: () {
                Navigator.pushNamed(context, "/radioarthmetric");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("list tile"),
              onPressed: () {
                Navigator.pushNamed(context, "/listtilescreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Conatiner Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/containerscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Iamge Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/imagescreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Register Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/registerscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Flexible Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/flexiblescreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Snack Bar"),
              onPressed: () {
                Navigator.pushNamed(context, "/snackbarscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("flex Container"),
              onPressed: () {
                Navigator.pushNamed(context, "/flexconatiner");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("card Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/cardscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Grid Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/gridscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Calculator"),
              onPressed: () {
                Navigator.pushNamed(context, "/calculator");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Table Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/displaytable");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Stack Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/stackscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Buttom Naviagtion"),
              onPressed: () {
                Navigator.pushNamed(context, "/buttomnavigation");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("dashboard"),
              onPressed: () {
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Login Screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/loginscreen");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text("Splash screen"),
              onPressed: () {
                Navigator.pushNamed(context, "/SplashScreen");
              },
            ),
          ),
        ],
      )),
    );
  }
}
