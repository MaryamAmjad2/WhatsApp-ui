import 'package:bootcamp_material_design/chatrow.dart';
import 'package:bootcamp_material_design/frostedGlass.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            GlassBox(
                theHeight: 70.0,
                theWidth: 425.0,
                theChild: ChatRow(
                  img: 'assets/f1.png',
                  name: 'Maryam',
                  txt: "How are you",
                )),
            SizedBox(
              height: 10,
            ),
            GlassBox(
              theHeight: 70.0,
              theWidth: 425.0,
              theChild: ChatRow(
                img: 'assets/f3.jpg',
                name: 'Maria',
                txt: "How are you",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GlassBox(
              theHeight: 70.0,
              theWidth: 425.0,
              theChild: ChatRow(
                img: 'assets/m1.jpg',
                name: 'Jhon',
                txt: "How are you",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GlassBox(
              theHeight: 70.0,
              theWidth: 425.0,
              theChild: ChatRow(
                img: 'assets/f2.jpg',
                name: 'Anna',
                txt: "How are you",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GlassBox(
              theHeight: 70.0,
              theWidth: 425.0,
              theChild: ChatRow(
                img: 'assets/m2.jpg',
                name: 'Leo',
                txt: "How are you",
              ),
            ),
            SizedBox(height: 100),
            Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(13),
                ),
                height: 50,
                width: 50,
                child: Icon(Icons.message_rounded, color: Colors.black))
          ],
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
