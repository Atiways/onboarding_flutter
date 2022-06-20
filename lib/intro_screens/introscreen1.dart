import 'package:flutter/material.dart';
class introScreen1 extends StatefulWidget {
  const introScreen1({ Key? key }) : super(key: key);

  @override
  State<introScreen1> createState() => _introScreen1State();
}

class _introScreen1State extends State<introScreen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,  
      child: const Center(
          child: Text(
        "Page 1",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      )),
    );
  }
}