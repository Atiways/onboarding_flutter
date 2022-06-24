// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

import '../util/job_card.dart';

class HomeNav extends StatelessWidget {
  HomeNav({Key? key}) : super(key: key);
  final List jobForYou =[
    ["uber","UI Designer",'lib/icons/uber.png','40'],
    ["Google","UI Designer",'lib/icons/uber.png','40'],
    ["Nike","UI Designer",'lib/icons/uber.png','40']
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
            itemCount: 3,
            itemBuilder:(context,index){
            return jobCard(
              companyName: "uber",
              jobTitle: "ui designer",
              logoImagePath: "lib/icons/uber.png",
              hourlyRate: 30,
            );
          }),
         )
        // recently added job tiles
      ]),
    );
  }
}
