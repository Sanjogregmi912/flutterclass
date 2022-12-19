import 'package:flutter/material.dart';
import 'package:myfirstproject/bottom_screen/Dashboard.dart';
import 'package:myfirstproject/screens/ButtomNavigationScreen.dart';
import 'package:myfirstproject/screens/CardScreen.dart';
import 'package:myfirstproject/screens/ColumnScreen.dart';
import 'package:myfirstproject/screens/ContainerScreen.dart';
import 'package:myfirstproject/screens/DisplayStudent.dart';
import 'package:myfirstproject/screens/DisplayTableScreen.dart';
import 'package:myfirstproject/screens/FlexContainerScreen.dart';
import 'package:myfirstproject/screens/FlexibleScreen.dart';
import 'package:myfirstproject/screens/GridScreen.dart';
import 'package:myfirstproject/screens/HomepageScreen.dart';
import 'package:myfirstproject/screens/ImageScreen.dart';
import 'package:myfirstproject/screens/Listtilescreen.dart';
import 'package:myfirstproject/screens/LoginScreen.dart';
import 'package:myfirstproject/screens/Radioarthmetric.dart';
import 'package:myfirstproject/screens/Register_screen.dart';
import 'package:myfirstproject/screens/SnackBarScreen.dart';
import 'package:myfirstproject/screens/StackScreen.dart';
import 'package:myfirstproject/screens/addition.dart';
import 'package:myfirstproject/screens/calculator.dart';
import './screens/Arthmetric.dart';
import './screens/interest.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/siscreen': (context) => const intrest(),
        '/arthmetricscreen': (context) => const Arthmetric(),
        '/columns': (context) => const ColumnScreen(),
        '/addition': (context) => const MyScreen(),
        '/radioarthmetric': (context) => const RadioArthmetric(),
        '/listtilescreen': (context) => const Listtilescreen(),
        '/containerscreen': (context) => const ContainerScreen(),
        '/imagescreen': (context) => const ImageScreen(),
        '/registerscreen': (context) => const RegisterScreen(),
        '/flexiblescreen': (context) => const FlexsibleScreen(),
        '/snackbarscreen': (context) => const SnackBarScreen(),
        '/flexconatiner': (context) => const FlexContainer(),
        '/displayStudent' :(context) => const DisplayStudent(),
        '/cardscreen' :(context) =>  const CardScreen(),
         '/gridscreen' :(context) =>  const GridScreen(),
         '/calculator' :(context) => const Calculator(),
         '/displaytable' :(context) => const DisplayTableScreen(),
         "/stackscreen" : (context) => const StackScreen(),
         "/buttomnavigation" :(context) => const ButtomNavigationScreen(),
         "/dashboard" :(context) => const Dashboard(),
         "/loginscreen" :(context) => const LoginScreen()
      },
    ),
  );
}
