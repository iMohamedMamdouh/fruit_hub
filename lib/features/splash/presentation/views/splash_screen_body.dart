import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_screen.dart';
import 'package:fruit_hub/features/on_boarding/presentation/on_boarding_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset('assets/images/plant.svg')],
        ),
        SvgPicture.asset('assets/images/logo2.svg', height: 200),
        SvgPicture.asset('assets/images/bubbles.svg', fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      if (Prefs.getBool(isBoardingShownKey)) {
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
      }
    });
  }
}
