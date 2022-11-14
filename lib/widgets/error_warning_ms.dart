import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Message {
  static void charityErrorOrWarning(
      String charityName, String charityErrorOrWarning) {
    Get.snackbar(charityName, charityErrorOrWarning,
        backgroundColor: Color.fromARGB(136, 235, 234, 234),
        titleText: Text(
          charityName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(137, 94, 94, 94),
          ),
        ),
        messageText: Text(
          charityErrorOrWarning,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(136, 121, 55, 55),
          ),
        ));
  }
}
