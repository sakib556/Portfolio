import 'package:flutter/material.dart';
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
                            WhiteCard(),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(),
                            SizedBox(
                              width: 20,
                            ),
                            WhiteCard(),
                          ],
                        ),
                      ),
                    ),
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
  const WhiteCard({super.key});

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
              Icon(Icons.facebook),
              SizedBox(
                width: 6,
              ),
              Text("Facebook")
            ],
          ),
          Text("Follow me")
        ],
      ),
    );
  }
}
