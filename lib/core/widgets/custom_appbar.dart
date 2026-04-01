import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new_rounded),
    ),
    title: Text(title, style: TextStyles.bold19),
  );
}
