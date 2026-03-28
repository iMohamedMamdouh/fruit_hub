import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    this.isVisible = true,
    this.onSkip,
  });
  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isVisible;
  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(child: SvgPicture.asset(image)),
                ),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: onSkip,
                      child: Text(
                        "تخط",
                        style: TextStyles.regular13.copyWith(
                          color: Color(0xFF949D9E),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 64),
          title,
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5556)),
            ),
          ),
        ],
      ),
    );
  }
}
