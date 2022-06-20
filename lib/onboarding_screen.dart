import 'package:flutter/material.dart';
import 'package:onboarding_practice/home_page.dart';
import 'package:onboarding_practice/intro_screens/introscreen1.dart';
import 'package:onboarding_practice/intro_screens/introscreen_2.dart';
import 'package:onboarding_practice/intro_screens/introscreen_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {

  PageController _controller = PageController();
  //keep track of last page
  bool onlastpage= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index){
              setState(() {
                onlastpage=(index==2);
              });
            } ,
            controller: _controller,
            children: [
              introScreen1(),
              introScreen2(),
              introScreen3(),
            ],
          ),
          //dot indicators
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                    
                    child: Text("Skip"),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                onlastpage?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text("Done")):
                  GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Text("Next")),

                ],
              )),
        ],
      ),
    );
  }
}
