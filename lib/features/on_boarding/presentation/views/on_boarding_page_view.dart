import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/widgets/on_boarding_widget.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    const int lastPageIndex = 1;
    return PageView(
      controller: pageController,
      children: [
        OnBoardingWidget(
          isVisible: true,
          image: "assets/images/fruits_onboarding1.svg",
          backgroundImage: "assets/images/background_onboarding1.svg",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في", style: TextStyles.bold23),
              SizedBox(width: 8),
              Text(
                "HUB",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                "Fruit",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          onSkip: () {
            pageController.animateToPage(
              lastPageIndex,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInCubic,
            );
          },
        ),
        OnBoardingWidget(
          isVisible: false,
          image: "assets/images/fruits_onboarding2.svg",
          backgroundImage: "assets/images/background_onboarding2.svg",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ابحث وتسوق",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0C0D0D),
                ),
              ),
            ],
          ),
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
        ),
      ],
    );
  }
}
