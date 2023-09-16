import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.grey,
        items: [
      Icon(Icons.person_outlined, size: 30),
      Icon(Icons.favorite_outline, size: 30),
      Icon(Icons.home, size: 30,
      color: Colors.redAccent,),
      Icon(Icons.location_on, size: 30),
      Icon(Icons.list, size: 30),
    ]
    );
  }
}


// import 'package:flutter/material.dart';
//
// class UpsidePhoto extends StatelessWidget {
//   const UpsidePhoto({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 30),
//           child: Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 200,
//                     child: ListView.builder(
//                       itemCount: 6,
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (BuildContext context, int index){
//                         return InkWell(
//                           onTap: (){},
//                           child: Container(
//                             width: 160,
//                             padding:EdgeInsets.all(20),
//                             margin:  EdgeInsets.only(left: 15),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15),
//                                 color: Colors.black,
//                               image: DecorationImage(
//                                   image: AssetImage("assets/images/city${index + 1}.jpg"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         );
//                     }),
//                 ),
//                 ),
//               ],
//           ),
//         ),
//       ),
//     );
//   }
// }
