import 'package:flutter/material.dart';

class ChatRow extends StatelessWidget {
  const ChatRow({required this.img, required this.txt, required this.name});
  final img;
  final name;
  final txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(
          backgroundImage: AssetImage(img),
          radius: 25,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              txt,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            )
          ],
        )
      ],
    );
  }
}
