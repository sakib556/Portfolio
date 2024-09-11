import 'package:flutter/material.dart';

class BigWhiteCard extends StatelessWidget {
  const BigWhiteCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle});
  final String title;
  final String subTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 140,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: .5, color: Colors.grey.withOpacity(.5)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subTitle),
              ],
            ),
            Container(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(icon),
                ))
          ],
        ));
  }
}
