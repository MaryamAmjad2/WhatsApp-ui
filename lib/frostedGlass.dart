import 'dart:ui';

import 'package:flutter/material.dart';
//
// class GlassBox extends StatelessWidget {
//   const GlassBox({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//           width: 200,
//           height: 200,
//           child: Stack(
//             //Blur Effect
//             children: [
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.white.withOpacity(0.2)),
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       end: Alignment.bottomRight,
//                       begin: Alignment.topLeft,
//                       colors: [
//                         Colors.white.withOpacity(0.5),
//                         Colors.white.withOpacity(0.1)
//                       ]),
//                 ),
//               ),
//               Text("hello")
//             ],
//           )),
//     );
//   }
// }

class GlassBox extends StatelessWidget {
  const GlassBox(
      {required this.theHeight,
      required this.theWidth,
      required this.theChild});
  final theWidth;
  final theHeight;
  final theChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: theWidth,
      height: theHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.1), // Adjust opacity as needed
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust blur intensity
          child: Container(
              color: Colors.white.withOpacity(0.1), // Adjust opacity as needed
              child: theChild),
        ),
      ),
      //     ),
      //   ),
    );
  }
}
