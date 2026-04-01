import 'package:flutter/material.dart';
import 'package:fruit_hub/constans.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(
        children: [
          Expanded(child: Divider(color: Color(0xFFDCDEDE))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text("أو", style: TextStyles.semiBold16),
          ),
          Expanded(child: Divider(color: Color(0xFFDCDEDE))),
        ],
      ),
    );
  }
}
