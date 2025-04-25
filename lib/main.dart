import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tarkhineh_app/core/theme/theme.dart';
import 'package:tarkhineh_app/screens/splash/light_splash_screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // set direction
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa')//Farsi
      ],
      debugShowCheckedModeBanner: false,
      title: "ترخینه یک اپ رستورانی",
      // set app theme
      theme: appTheme,
      home: LightSplashScreens(),
    );
  }
}
