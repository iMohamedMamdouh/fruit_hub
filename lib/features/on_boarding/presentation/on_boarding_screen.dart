import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const routeName = "on_boarding";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingScreenBody());
  }
}
