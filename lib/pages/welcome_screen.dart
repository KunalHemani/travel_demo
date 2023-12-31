import 'package:ex_form_db/widgets/card_bottom_navigation.dart';
import 'package:ex_form_db/pages/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/login_screen.dart';
import 'package:ex_form_db/pages/welcome_screen.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:ex_form_db/utils/sql_helper.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/t6.jpg"),
          fit: BoxFit.cover,
        )
      ),

      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                Text("Welcome to Dreamer's Way",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                    ));
                  },
                    child: Ink(
                      decoration: BoxDecoration(
                             color: Colors.white60,
                             borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(
                          Icons.navigate_next_rounded,
                        size: 65,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
