import 'package:flutter/material.dart';
import 'package:task1/screens/login_screen.dart';
import 'package:task1/screens/onboarding-screen.dart';
import 'package:task1/screens/register_screen.dart';
import 'package:task1/utilities/routes.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginScreenRoute:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case AppRoutes.registerScreenRoute:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    default:
      return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
  }
}
