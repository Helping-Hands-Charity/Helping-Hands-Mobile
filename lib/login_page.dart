import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/logo.png"), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in to your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
