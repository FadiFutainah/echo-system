import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Interview 101',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 1,
        splash: const Icon(Icons.android_outlined,
            size: 200, color: Color(0xff24C077)),
        backgroundColor: Colors.white,
        nextScreen: const SplashScreen(),
      ),
    );
  }
}
