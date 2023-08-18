import 'package:bootcamp_material_design/frostedGlass.dart';
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
      ),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        GlassBox(
          theHeight: 70.0,
          theWidth: 425.0,
          theChild: Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  child: Icon(Icons.group, size: 40, color: Colors.white)),
              SizedBox(
                width: 5,
              ),
              Text(
                'New Community',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                  child: Icon(Icons.add_circle, color: Colors.teal, size: 30)),
            ],
          ),
        ),
      ]),
    );
  }
}
