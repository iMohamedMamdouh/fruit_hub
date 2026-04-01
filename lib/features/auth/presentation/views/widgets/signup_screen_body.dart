import 'package:flutter/material.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: "الاسم كامل",
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: "البريد الإلكتروني",
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            suffixIcon: Icon(Icons.visibility, color: Color(0xFFC9CECF)),
            hintText: " كلمة المرور",
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 16),
          TermsAndConditions(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(onPressed: () {}, text: "انشاء حساب"),
          ),
          SizedBox(height: 24),
          HaveAnAccountWidget(),
        ],
      ),
    );
  }
}
