import 'package:ex_form_db/widgets/post_app_bar.dart';
import 'package:ex_form_db/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/t2.jpg"),
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(90),
                child: PostAppBar(),
              ),
              bottomNavigationBar: PostBottomBar(),
            ),
          );
        },
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/t1.jpg"),
        //       fit: BoxFit.cover,
        //     )
        //   ),
        //   child: Scaffold(
        //     backgroundColor: Colors.transparent,
        //     appBar: PreferredSize(
        //       preferredSize: Size.fromHeight(90),
        //       child: PostAppBar(),
        //     ),
        //     bottomNavigationBar: PostBottomBar(),
        //   ),
        // ),
      ),
    );
  }
}
