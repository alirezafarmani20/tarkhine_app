import 'package:flutter/material.dart';
import 'package:tarkhineh_app/core/theme/color.dart';
import 'package:tarkhineh_app/screens/onboarding/onboarding_screen.dart';
//import 'package:tarkhineh_app/widgets/loading.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
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
              decoration: BoxDecoration(color: ColorApp.primary),
            ),
            Container(
              // background layout image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/Back2.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              // logo section
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("lib/assets/images/AppLogo.png")),
                  // loading animations
                  // Loading(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
