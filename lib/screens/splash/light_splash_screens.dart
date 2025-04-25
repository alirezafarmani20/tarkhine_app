import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarkhineh_app/core/theme/color.dart';
import 'package:tarkhineh_app/screens/splash/splash_screens.dart';

class LightSplashScreens extends StatefulWidget {
  const LightSplashScreens({super.key});

  @override
  State<LightSplashScreens> createState() => _LightSplashScreensState();
}

class _LightSplashScreensState extends State<LightSplashScreens> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreens()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              // background box
              decoration: BoxDecoration(
                color: ColorApp.tint_1
              ),
            ),
            Container(
              // image box
              decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage("lib/assets/images/Back.png"))
              ),
            )
          ],
        ),
      ),
    );
  }
}