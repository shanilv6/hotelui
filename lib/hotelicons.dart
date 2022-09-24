import 'package:flutter/material.dart';

class Hotel_container extends StatelessWidget {
  final IconData icon;
  final String iconname;
  final color;
  const Hotel_container(
      {super.key,
      required this.icon,
      required this.iconname,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              iconname,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
