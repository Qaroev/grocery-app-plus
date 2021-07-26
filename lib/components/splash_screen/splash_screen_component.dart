import 'package:flutter/material.dart';

class SplashScreenComponent extends StatefulWidget {
  @override
  _SplashScreenComponentState createState() => _SplashScreenComponentState();
}

class _SplashScreenComponentState extends State<SplashScreenComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Mask Group.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  image: AssetImage('assets/full 1.png'), fit: BoxFit.cover),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Grocery Plus",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
