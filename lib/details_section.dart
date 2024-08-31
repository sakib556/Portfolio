import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  final String title1;
  final String value1;
  final String title2;
  final String value2;
  final String title3;
  final String value3;
  final String title4;
  final String value4;

  const DetailsSection(
      {super.key,
      required this.title1,
      required this.value1,
      required this.title2,
      required this.value2,
      required this.title3,
      required this.value3,
      required this.title4,
      required this.value4});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title1),
                SizedBox(
                  width: 4,
                ),
                Text(value1),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(title2),
                SizedBox(
                  width: 4,
                ),
                Text(value2),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(title3),
                SizedBox(
                  width: 4,
                ),
                Text(value3),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(title4),
                SizedBox(
                  width: 4,
                ),
                Text(value4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// ---------------------------

// Row :  Username :________Mr Rana 
// Row:  Institute name :_____Acasdfkd
//-----------------------------

// ---------------------------

// 

//-----------------------------