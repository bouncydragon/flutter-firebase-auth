import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/Screens/Welcome/circles_designs.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          const Positioned(
            top: 0,
            left: 0,
            child: CircleDesign(
              height: 150.0,
              width: 150.0,
              color: 0xfff39c12,
              bottomRightRadius: 150.0,
            )

          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Stack(
              children: const [
              CircleDesign(height: 200.0, width: 200.0, color: 0xfff39c12, topLeftRadius: 200.0,),
              Positioned(
                bottom: 0,
                right: 0,
                child: 
                 CircleDesign(height: 80.0, width: 80.0, color: 0xfff1c40f, topLeftRadius: 150.0,)
                )
            ],)
          )
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_firebase_authentication/Screens/Welcome/circles_designs.dart';

// class Background extends StatelessWidget {
//   final Widget child;
//   const Background({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: double.infinity,
//       height: size.height,
//       child: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           const Positioned(
//             top: 0,
//             left: 0,
//             child: CircleDesign(
//               height: 150.0,
//               width: 150.0,
//               color: 0xff34495e,
//               bottomRightRadius: 150.0,
//             )

//           ),
//           const Positioned(
//             bottom: 0,
//             right: 0,
//             child: CircleDesign(
//               height: 150.0,
//               width: 150.0,
//               color: 0xff34495e,
//               topLeftRadius: 150.0,
//             )
//           ),
//           child,
//         ],
//       ),
//     );
//   }
// }