import 'package:ex_form_db/widgets/card_bottom_navigation.dart';
import 'package:ex_form_db/pages/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/login_screen.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';

 class SampleCard extends StatefulWidget {
   const SampleCard({super.key});

   @override
   State<SampleCard> createState() => _SampleCardState();
 }

 class _SampleCardState extends State<SampleCard> {

   var category = [
     'Best Places',
     'Most Visited',
     'Hotels',
     'Restaurants',
     'Favourites',
     'New Added'
   ];

   var cityname = [
     'Goa',
     'Amritsar',
     'Kerala',
     'Kedarnath',
     'Kutch',
     'Agra'
   ];

   @override
   Widget build(BuildContext context) {

     int i; // Category
     int j; // City name

     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("Multiple Images"),
       ),
       body: SafeArea(
         child: Padding(
           padding: EdgeInsets.symmetric(vertical: 30),
           child: Column(
             children: [
               Expanded(
                 child: Container(
                   height: 200,
                   child: ListView.builder(
                     itemCount: 6,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (BuildContext context, int index){
                         return InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                                 builder: (context) => PostScreen()));
                           },
                           child: Container(
                             width: 200,
                             padding: EdgeInsets.all(20),
                             margin: EdgeInsets.only(left: 15),
                             decoration: BoxDecoration(
                               color: Colors.black,
                               borderRadius: BorderRadius.circular(25),
                               image: DecorationImage(
                                 // image: AssetImage("assets/images/city${index + 1}.jpg"),
                                 image: AssetImage("assets/images/t${index + 1}.jpg"),
                                 fit: BoxFit.cover,
                               ),
                             ),
                             child: Column(
                               children: [
                                 Container(
                                   alignment: Alignment.topRight,
                                   child: Icon(Icons.bookmark_border,
                                   size: 30,
                                   ),
                                 ),
                                 Spacer(),
                                 Container(
                                   alignment: Alignment.bottomLeft,
                                   child: Text(
                                     'City Name',
                                     style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.white,
                                       fontWeight: FontWeight.w600
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         );
                       }
                       ),
                 ),
               ),


               SizedBox(height: 10),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     for(i = 0; i < 6; i++)
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                         padding: EdgeInsets.all(10),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black,
                               blurRadius: 3,
                             )
                           ]
                         ),
                         child: Text(category[i],
                         style: TextStyle(
                           fontSize: 16
                         ),
                         ),
                       )
                   ],
                 ),
           ),
               SizedBox(height: 10),
           // Column(
           //   children: [
           //     Row(
           //       mainAxisAlignment: MainAxisAlignment.spaceAround,
           //       children: [
           //         Expanded(child: Image.asset("assets/images/t6.jpg"),),
           //       ],
           //     )
           //   ],
           // ),

           Expanded(
             child: ListView.builder(
               itemCount: 6,
                 //shrinkWrap: true,
                 itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PostScreen()));
                        },
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/images/t${index + 1}.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Package ${index + 1}",
                            style: TextStyle(
                              fontSize: 20
                            ),
                            ),
                            Icon(Icons.more_vert,
                            size: 29),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text('Desc')
                        ],
                      ),
                    ],
                  ),
                );
             }),
           ),
             ],
           ),
         ),
       ),
      bottomNavigationBar: HomeNavigationBar(),
     );
   }
 }