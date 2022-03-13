// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ClipPath(
//             child: Container(
//               width: double.infinity,
//               height: 320,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.black,
//                     Colors.blue.shade900
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//             ),
//             clipper: RoundedClipper(),
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height - 320,
//             width: MediaQuery.of(context).size.width,
//             child: Center(child: Image.asset('assets/onebook.jpeg')),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class RoundedClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height);
//     path.quadraticBezierTo(
//         size.width / 2,
//         size.height - 100,
//         size.width,
//         size.height
//     );
//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

import 'package:flutter/material.dart';
import 'package:simple_bottom_nav/simple_bottom_nav.dart';


class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SimpleBottomNavigator(
          navWidgetList: [
            BottomNavModel(
              title: "Home",
              index: 0,
              activeColor: const Color(0xffFB65B2),
              iconList: [
                "assets/Component 3.png",
                "assets/Home.png",
              ],
              context: context,
            ),
            BottomNavModel(
              title: "Recipe",
              index: 1,
              activeColor: const Color(0xff2EB2FF),
              iconList: [
                "assets/foodtrayFilled.png",
                "assets/foodtray.png",
              ],
              context: context,
            ),
            BottomNavModel(
              title: "Pregency",
              index: 2,
              activeColor: const Color(0xff35B729),
              iconList: [
                "assets/Group 526.png",
                "assets/Frame 9.png",
              ],
              context: context,
            ),
            BottomNavModel(
              title: "Profile",
              index: 3,
              activeColor: const Color(0xff707070),
              iconList: [
                "assets/Component 3-3.png",
                "assets/Component 6.png",
              ],
              context: context,
            ),
          ],
          pageList: const [
            Scaffold(
              backgroundColor: Colors.pink,
              body: Center(
                child: Text("Home"),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.blue,
              body: Center(
                child: Text("Recipe"),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.greenAccent,
              body: Center(
                child: Text("Pregnency"),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.grey,
              body: Center(
                child: Text("Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
