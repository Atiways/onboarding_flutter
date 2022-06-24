import 'package:flutter/material.dart';

class introScreen3 extends StatefulWidget {
  const introScreen3({Key? key}) : super(key: key);

  @override
  State<introScreen3> createState() => _introScreen3State();
}
// ignore: camel_case_types
class _introScreen3State extends State<introScreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
          child: Text(
        "Page 3",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      )),
    );
  }
}
