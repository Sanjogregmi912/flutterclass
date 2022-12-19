import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  Widget _usernametext(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter $label first";
        }
        return null;
      },
    );
  }

  Widget _passwordtext(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter $label first";
        } else if (value.length <= 5) {
          return "password is too short";
        }
        return null;
      },
    );
  }

  Widget _button(String name) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.amber),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      onPressed: () {
        if (globalkey.currentState!.validate()) {}
      },
      child: Text(
        name,
        style: const TextStyle(
            color: Colors.redAccent, fontWeight: FontWeight.bold),
      ),
    );
  }

  final globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: globalkey,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 80,
              bottom: 350,
              left: 200,
              child: SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset("images/education.svg"),
              ),
            ),
            Positioned(
              top: 280,
              bottom: 100,
              left: 100,
              child: SizedBox(
                height: 100,
                width: 300,
                child: _usernametext("Enter Username", usernamecontroller),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 100,
              child: SizedBox(
                height: 100,
                width: 300,
                child: _passwordtext("Enter password", passwordcontroller),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 110,
              child: SizedBox(
                height: 50,
                width: 300,
                child: _button("login"),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 50,
              child: SizedBox(
                height: 50,
                width: 300,
                child: _button("Register"),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
