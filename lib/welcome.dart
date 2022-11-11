import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:helpinghands/auth_controller.dart';
import 'package:helpinghands/screens/admin_home.dart';
import 'package:helpinghands/screens/donor_home.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.42,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/welcome.jpg"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Helping Hands",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: w * 0.7,
            height: h * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("img/login-btn.png"), fit: BoxFit.cover),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(
                          () => AdminHome(),
                        ),
                  text: "I want to manage",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(120, 248, 237, 241),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: w * 0.7,
            height: h * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("img/login-btn.png"), fit: BoxFit.cover),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(
                          () => DonorHome(),
                        ),
                  text: "I want to donate",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(120, 248, 237, 241),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logout();
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("img/login-btn.png"), fit: BoxFit.cover),
              ),
              child: Center(
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(120, 247, 227, 234),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: w * 0.09),
        ],
      ),
    );
  }
}
