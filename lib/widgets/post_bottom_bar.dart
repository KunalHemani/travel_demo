import 'package:ex_form_db/pages/post_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Surat to Goa',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,
                      color: Colors.amberAccent,),
                      Text('4.5',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text('Goa is not just a place for youngsters to chill. Its high '
                  'time to change Goa’s image and appreciate it for its serene'
                  'ambience. If you are planning a holiday with your family, '
                  'Goa’s paradise-like beaches, lavish homestays, and '
                  'scrumptious food options form an ultimate family holiday '
                  'destination. The place is also famous for its 17th-century '
                  'Portuguese churches and so many adventure sports. The '
                  'Western Ghats running through the region make it lush for '
                  'wildlife and flora too.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(08),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4
                      ),
                    ]
                  ),
                  child: Icon(Icons.bookmark_border,
                  size: 35,),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                      ),
                    ]
                  ),
                  child: Text('Book Now',
                  style: TextStyle(
                      fontSize: 19,
                  fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
