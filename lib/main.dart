import 'package:flutter/material.dart';
import 'package:tiktok/Views/screens/firstpage_tiktok.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter TikTok',
      debugShowCheckedModeBanner: false,
      home: FirstPageTiktok(),
    );
  }
}
