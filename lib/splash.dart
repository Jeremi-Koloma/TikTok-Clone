import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tiktok/Accueil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(
          builder: (context) => const MyStatefulWidget(
                title: 'TikTok ODC',
              )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141518),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/logoT.png"),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitThreeBounce(
              color: Color.fromARGB(255, 248, 24, 80),
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
