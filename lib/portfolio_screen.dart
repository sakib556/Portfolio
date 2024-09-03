import 'package:flutter/material.dart';
import 'package:portfolio/details_section.dart';
import 'package:portfolio/white_box.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/men.jpg"),
            SizedBox(
              height: 10,
            ),
            const Text(
              "Mr Sohel Rana",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            WhiteBox(title: "Email :", value: "mrsohelrana@gmail.com"),
            SizedBox(
              height: 10,
            ),
            WhiteBox(title: "Github :", value: "www.github.com/sakib556"),
            SizedBox(
              height: 10,
            ),
            const DetailsSection(
                title1: "Intitute Name :",
                value1: "Feni Computer Institute",
                title2: "Department :",
                value2: "Computer Science",
                title3: "ID No :",
                value3: "11202154",
                title4: "Birthday :",
                value4: "03-07-2000")
          ],
        ),
      ),
    );
  }
}

// column >

// image
// title
// description
//-------------------------------------------------






//--------------------------------------------------------