import 'package:flutter/material.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [ 
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hi",
              style: TextStyle(fontSize: 24),
            ),
          ),
        )
      ]),
    );
  }
}
