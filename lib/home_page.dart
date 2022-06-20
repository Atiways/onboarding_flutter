import 'package:flutter/material.dart';
import 'package:onboarding_practice/bottomnav/homenavi.dart';
import 'package:onboarding_practice/bottomnav/messagenavi.dart';
import 'package:onboarding_practice/bottomnav/settingsnavi.dart';
import 'package:onboarding_practice/bottomnav/Accountnavi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: 
      BottomNavigationBar(
        onTap: _navigateBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
      ]),
    );
  }
  final List<Widget> _pages =[
    HomeNav(),
    MessageNav(),
    SettingsNav(),
    AccountNav(),
  ];

  int _selectedIndex =0;

  void _navigateBar(int index){
   setState(() {
     _selectedIndex = index;
   });
  }
}
