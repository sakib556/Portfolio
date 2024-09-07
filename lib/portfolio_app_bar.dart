import 'package:flutter/material.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.blue,
      leading: Icon(
        Icons.person,
        size: 40,
        color: Colors.grey,
      ),
      title: Text("Mr Roy"),
      actions: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.person_2)),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.person)),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
