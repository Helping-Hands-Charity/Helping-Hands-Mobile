import 'package:flutter/material.dart';
import 'package:helpinghands/screens/admin_add.dart';
import 'package:helpinghands/screens/all_charities.dart';
import 'package:helpinghands/widgets/btn_widgets.dart';
import 'package:get/get.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Charity Program Management",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nwww.helpinghands.org",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            InkWell(
              onTap: () {
                Get.to(
                  () => AdminAdd(),
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 500),
                );
              },
              child: ButtonWidgets(
                backgroundcolor: Colors.black54,
                text: "Add Charity",
                textColor: Color.fromARGB(137, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => AllCharities(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1));
              },
              child: ButtonWidgets(
                backgroundcolor: Color.fromARGB(137, 187, 186, 186),
                text: "View All",
                textColor: Color.fromARGB(136, 44, 44, 44),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("img/admin.png"),
          ),
        ),
      ),
    );
  }
}
