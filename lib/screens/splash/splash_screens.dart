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
      body: Column(
        children: [
          Text(
            "سلام دوستان این متن ازمایشی من است",
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
