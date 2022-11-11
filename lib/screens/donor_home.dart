import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/btn_widgets.dart';

class DonorHome extends StatefulWidget {
  const DonorHome({super.key});

  @override
  State<DonorHome> createState() => _DonorHomeState();
}

class _DonorHomeState extends State<DonorHome> {
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
                  text: "Donor Management",
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
            ButtonWidgets(
              backgroundcolor: Colors.black54,
              text: "Add Charity",
              textColor: Color.fromARGB(137, 255, 255, 255),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidgets(
              backgroundcolor: Color.fromARGB(137, 187, 186, 186),
              text: "View All",
              textColor: Color.fromARGB(136, 44, 44, 44),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("img/donor.png"),
          ),
        ),
      ),
    );
  }
}
