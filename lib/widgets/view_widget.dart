import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewWidget extends StatelessWidget {
  final String text;
  final Color? color;

  const ViewWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: Color(0xFFedf0f8), borderRadius: BorderRadius.circular(0)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
      ),
    );
  }
}
