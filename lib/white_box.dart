import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  const WhiteBox({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            SizedBox(
              width: 4,
            ),
            Text(value)
          ],
        ),
      ),
    );
  }
}
// ---------------------------

// row :  Username :________Mr Rana

//-----------------------------

// ---------------------------

// Institute name : Acasdfkd

//-----------------------------