import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5,
                    ),
                  ]
                ),
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  size: 28,
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: Icon(
                  Icons.favorite, color: Colors.redAccent,
                  size: 28,
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
