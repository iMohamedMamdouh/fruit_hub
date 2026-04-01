import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  final bool isChecked;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Transform.translate(
        offset: Offset(0, -4),
        child: AnimatedContainer(
          width: 24,
          height: 24,
          duration: Duration(milliseconds: 300),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: isChecked ? AppColors.primaryColor : Color(0xFFDCDEDE),
              ),
            ),
            color: isChecked ? AppColors.primaryColor : Colors.white,
          ),
          child: isChecked
              ? Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                  fontWeight: FontWeight.w700,
                )
              : null,
        ),
      ),
    );
  }
}
