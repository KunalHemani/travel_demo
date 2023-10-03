import 'package:flutter/material.dart';
import 'package:ex_form_db/pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ResponsiveButton extends StatelessWidget {

  bool? isResponsive;
  double? width;
  ResponsiveButton({Key ? key, this.width, this.isResponsive=false}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.deepPurpleAccent
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/forward_arrow.jpeg"),
        ],
      ),
    );
  }
}
