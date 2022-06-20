import 'package:flutter/material.dart';
class introScreen2 extends StatefulWidget {
  const introScreen2({ Key? key }) : super(key: key);

  @override
  State<introScreen2> createState() => _introScreen2State();
}

class _introScreen2State extends State<introScreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
        child: Center(
          child: Text(
        "Page 2",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      )),
    );
  }
}