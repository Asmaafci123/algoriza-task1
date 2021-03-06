import 'package:flutter/material.dart';
import 'package:task1/screens/onboarding-screen.dart';
import 'package:task1/utilities/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
      home: OnBoardingScreen(),
    );
  }
}
