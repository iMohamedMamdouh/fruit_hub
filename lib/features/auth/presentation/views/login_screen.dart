import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_appbar.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل الدخول"),
      body: LoginScreenBody(),
    );
  }
}
