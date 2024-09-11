import 'package:flutter/material.dart';
import 'package:portfolio/big_white_card.dart';
import 'package:portfolio/details_section.dart';
import 'package:portfolio/portfolio_app_bar.dart';
import 'package:portfolio/white_box.dart';

class Portfolio2Screen extends StatelessWidget {
  const Portfolio2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: PortfolioAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              // color: Colors.blue,
              // height: 200,
              // width: width,
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 200,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/person.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            WhiteCard(
                              title: "Facebook",
                              icon: Icons.facebook,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(
                                title: "Linked In",
                                icon: Icons.link_off_outlined),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(
                                title: "Github", icon: Icons.g_mobiledata),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.orange, fontSize: 22),
                  ),
                  Text("6 Months Experience"),
                  Text(
                    "I have learned much knowledge on flutter for 1 years.\nI have some professional projects.I have some professional projects.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BigWhiteCard(
                    title: "App Design",
                    icon: Icons.mobile_friendly,
                    subTitle: "App design is my faboufajrej ",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BigWhiteCard(
                    title: "App Design",
                    icon: Icons.mobile_friendly,
                    subTitle: "App design is my faboufajrej ",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WhiteCard extends StatelessWidget {
  const WhiteCard({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: .5, color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 6,
              ),
              Text(title)
            ],
          ),
          Text("Follow me")
        ],
      ),
    );
  }
}
