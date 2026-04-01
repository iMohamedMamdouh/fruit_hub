import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_appbar.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const routeName = "signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "حساب جديد"),
      body: SignupScreenBody(),
    );
  }
}
