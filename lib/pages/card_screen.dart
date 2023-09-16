import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';
import 'package:ex_form_db/pages/login_screen.dart';

class CardScreen extends StatelessWidget {
  // const CardScreen({super.key});

  var category = [
    'Best Places',
    'Most Visited',
    'Hotels',
    'Restaurants',
    'Favourites',
    'New Added'
  ];

  @override
  Widget build(BuildContext context) {
    int i;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Travel App Demo"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(i = 0; i < 6; i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: Text(category[i],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),


            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/city${index + 1}.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
              },

              ),
            ),

          ],
        ),
      ),
    );
  }
}

// class CardScreen extends StatelessWidget {
//   const CardScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//     //   child:        Card(
//     //     elevation: 0,
//     //     color: Theme.of(context).primaryColor,
//     //     child: const SizedBox(
//     //     width: 300,
//     //     height: 100,
//     //     child: Center(child: Text('Filled Card')),
//     //     ),
//     //     ),
//     //   ],
//
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Ink.image(
//             image: NetworkImage(
//               'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
//             ),
//             // colorFilter: ColorFilters.greyscale,
//             child: InkWell(
//               onTap: () {},
//             ),
//             height: 240,
//             fit: BoxFit.cover,
//           ),
//           Text(
//             'Card With Splash',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontSize: 24,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// }
