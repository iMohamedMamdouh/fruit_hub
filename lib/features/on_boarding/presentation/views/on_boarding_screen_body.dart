import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_screen.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_page_view.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  var currentPage = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      final page = pageController.page;
      if (page == null) return;
      final next = page.round();
      if (next == currentPage) return;
      currentPage = next;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(isBoardingShownKey, true);
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: "ابدا الان",
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
      ],
    );
  }
}
