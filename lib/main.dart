import 'package:bootcamp_material_design/calls.dart';
import 'package:bootcamp_material_design/chats.dart';
import 'package:bootcamp_material_design/groups.dart';
import 'package:bootcamp_material_design/status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.black87,
            appBar: AppBar(
              title: Text(
                'WhatsApp',
                style: GoogleFonts.amita(
                  textStyle: TextStyle(
                      color: Colors.teal.shade500,
                      fontWeight: FontWeight.w900,
                      fontSize: 28),
                ),
              ),
              backgroundColor: Colors.black,
              elevation: 20,
              titleSpacing: 30,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Colors.white, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white, size: 30),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.teal.shade400,
                indicatorWeight: 4,
                tabs: [
                  Icon(
                    Icons.groups,
                    size: 35,
                  ),
                  Text('Chats', style: TextStyle(fontSize: 20)),
                  Text('Status ', style: TextStyle(fontSize: 20)),
                  Text('Calls', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            body: TabBarView(
              children: [Groups(), Chats(), Status(), Calls()],
            )),
      ),
    );
  }
}
