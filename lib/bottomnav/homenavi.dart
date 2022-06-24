// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

import '../util/job_card.dart';
import '../util/recent_job_card.dart';

class HomeNav extends StatelessWidget {
  HomeNav({Key? key}) : super(key: key);
  final List jobForYou =[
    ["uber","UI Designer",'lib/icons/uber.png',40],
    ["Google","Product Dev",'lib/icons/google.png',80],
    ["Apple","Software Dev",'lib/icons/apple.png',90]
  ];
  final List recentJob =[
    ["Nike","Web Designer",'lib/icons/nike.png',20],
    ["Apple","Senior Dev",'lib/icons/apple.png',30],
    ["Google","Product Dev",'lib/icons/google.png',60],
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: Colors.white,
      // elevation: 0,
      // ),
      backgroundColor: Colors.grey[300],
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // app bar
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white),
              child: Image.asset("lib/icons/menu.png"),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        //Discover a new path text
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "Discover a new path",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        // search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          child: Image.asset("lib/icons/search.png"),
                          color: Colors.white,
                          height: 30,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "search for a new job"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/50,),
              Container(
                padding: EdgeInsets.all(12),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Image.asset("lib/icons/settings.png",color: Colors.white,),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/15,),
        //for you => job cards
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "For You",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
         SizedBox(height: MediaQuery.of(context).size.height/50,),
         Container(
          height: 160,
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: jobForYou.length,
            itemBuilder:(context,index){
            return jobCard(
              companyName: jobForYou[index][0],
              jobTitle: jobForYou[index][1],
              logoImagePath: jobForYou[index][2],
              hourlyRate: jobForYou[index][3],
            );
          }),
         ),
         SizedBox(height: MediaQuery.of(context).size.height/35,),
        // recently added job tiles
         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "Recently Added",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        // SizedBox(height: MediaQuery.of(context).size.height/50,),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: ListView.builder(
            itemCount: recentJob.length,
            itemBuilder: ((context, index) {
            return recentJobCard(
              companyName: recentJob[index][0],
              jobTitle: recentJob[index][1],
              logoImagePath: recentJob[index][2],
              hourlyRate: recentJob[index][3],
            );
          })),
        ))
      ]),
    );
  }
}
