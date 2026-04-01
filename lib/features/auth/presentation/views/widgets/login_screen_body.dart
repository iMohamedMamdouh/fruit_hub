import 'package:flutter/material.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: "البريد الإلكتروني",
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            suffixIcon: Icon(Icons.visibility, color: Color(0xFFC9CECF)),
            hintText: "كلمة المرور",
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(onPressed: () {}, text: "تسجيل الدخول"),
          ),
          SizedBox(height: 32),
          DontHaveAccountWidget(),
          SizedBox(height: 32),
          OrDivider(),
          SizedBox(height: 16),
          SocialLoginButton(
            icon: 'assets/icons/goolge_icon.svg',
            title: 'تسجيل بواسطة جوجل',
            onPressed: () {},
          ),
          SizedBox(height: 16),
          SocialLoginButton(
            icon: 'assets/icons/apple_icon.svg',
            title: 'تسجيل بواسطة أبل',
            onPressed: () {},
          ),
          SizedBox(height: 16),
          SocialLoginButton(
            icon: 'assets/icons/facebook_icon.svg',
            title: 'تسجيل بواسطة الفيسبوك',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
