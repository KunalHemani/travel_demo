import 'package:ex_form_db/pages/welcome_screen.dart';
import 'package:flutter/material.dart';
class zen extends StatefulWidget {
  const zen({super.key});

  @override
  State<zen> createState() => _zenState();
}

class _zenState extends State<zen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Text("My first flutter App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35
              ),
              ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_rounded),

              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: Icon(Icons.password_rounded),

              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => WelcomeScreen()));
              },
              child: Text("SEND"),
            )
          ],
        ),
      ),
    );

  }
}
