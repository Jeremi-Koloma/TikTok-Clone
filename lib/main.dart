import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/Accueil.dart';
import 'package:tiktok/splash.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TikTok',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: const Image(
            image: AssetImage("assets/images/logoT.png"),
            width: 300,
          ),
          duration: 3500,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: const Color(0xFF141518),
          nextScreen: const MyStatefulWidget(title: 'Jeremi')),
    );
  }
}
