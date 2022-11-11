import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidgets extends StatelessWidget {
  final Color backgroundcolor;
  final String text;
  final Color textColor;
  const ButtonWidgets(
      {super.key,
      required this.backgroundcolor,
      required this.text,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 25, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
