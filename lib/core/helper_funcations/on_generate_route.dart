import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/presentation/splashscreen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Splashscreen.routeName:
      return MaterialPageRoute(builder: (context) => const Splashscreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}