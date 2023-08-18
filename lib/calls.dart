import 'package:bootcamp_material_design/chatrow.dart';
import 'package:bootcamp_material_design/frostedGlass.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          GlassBox(
            theHeight: 70.0,
            theWidth: 425.0,
            theChild: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.teal),
                  child: Icon(Icons.link, size: 30, color: Colors.white),
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Create a Call Link',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Create Link for your WhatsApp Call',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text('Recent',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 8,
          ),
          GlassBox(
            theHeight: 70.0,
            theWidth: 425.0,
            theChild: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChatRow(
                    img: 'assets/m1.jpg',
                    txt: 'August 17,5:30 PM',
                    name: 'Paul'),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.call, size: 30, color: Colors.teal)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GlassBox(
            theHeight: 70.0,
            theWidth: 425.0,
            theChild: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChatRow(
                    img: 'assets/m2.jpg',
                    txt: 'August 15,8:30 PM',
                    name: 'Jake'),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child:
                        Icon(Icons.video_call, size: 30, color: Colors.teal)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
