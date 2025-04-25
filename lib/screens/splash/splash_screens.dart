import 'package:flutter/material.dart';
import 'package:tarkhineh_app/core/theme/color.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(decoration: BoxDecoration(
              color: ColorApp.primary
            )),
            Container(
              child: Text("hello world", style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
