import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ex_form_db/widgets/card_bottom_navigation.dart';
import 'package:ex_form_db/pages/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/login_screen.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';


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