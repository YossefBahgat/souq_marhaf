import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ContinueButtonWidget extends StatelessWidget {
  final bool isFormValid;
  final VoidCallback? onPressed;

  const ContinueButtonWidget({
    required this.isFormValid,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isFormValid ? ColorsManager.buttonGreen : ColorsManager.gray,
        minimumSize: Size(double.infinity, 60.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
      ),
      child: Text("متابعة", style: TextStyles.font25black),
    );
  }
}
