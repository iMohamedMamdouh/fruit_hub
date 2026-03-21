import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_screen_body.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  static const routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody()
    );
  }
}