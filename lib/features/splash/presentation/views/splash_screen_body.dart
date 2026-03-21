import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset('assets/images/plant.svg')],
        ),
        SvgPicture.asset('assets/images/logo2.svg', height: 200),
        SvgPicture.asset('assets/images/bubbles.svg', fit: BoxFit.fill),
      ],
    );
  }
}
