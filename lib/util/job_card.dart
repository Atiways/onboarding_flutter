// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class jobCard extends StatelessWidget {
  // const jobCard({ Key? key }) : super(key: key);
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;
  jobCard({
    required this.companyName,
    required this.hourlyRate,
    required this.jobTitle,
    required this.logoImagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  child: Image.asset(logoImagePath),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text("Part time",style: TextStyle(color: Colors.white),),
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(jobTitle,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),),
            ),
            Text('\$'+hourlyRate.toString()+'/hr')
          ]),
        ),
      ),
    );
  }
}
