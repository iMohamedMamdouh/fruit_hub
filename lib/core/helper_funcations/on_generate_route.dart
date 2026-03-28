import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_screen.dart';
import 'package:fruit_hub/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:fruit_hub/features/splash/presentation/splashscreen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Splashscreen.routeName:
      return MaterialPageRoute(builder: (context) => const Splashscreen());
    case OnBoardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
