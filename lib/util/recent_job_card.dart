import 'package:flutter/material.dart';

class recentJobCard extends StatelessWidget {
  // const recentJobCard({ Key? key }) : super(key: key);
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;
  recentJobCard({
    required this.companyName,
    required this.hourlyRate,
    required this.jobTitle,
    required this.logoImagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
            children: [
               ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 50,
                child: Image.asset(logoImagePath),
                padding: EdgeInsets.all(12),
                color: Colors.grey[300],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(companyName,
                style: TextStyle(
                  color: Colors.grey[600]
                ),
                ),
              ],
            ),
            ],
           ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.green[300],
                child: Text('\$'+hourlyRate.toString()+'/hr',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
