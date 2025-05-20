import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ToggleInputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool toggleValue;
  final Function(bool) onToggleChanged;
  final TextEditingController? controller;

  const ToggleInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.toggleValue,
    required this.onToggleChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(label, style: TextStyles.font22black),
          SizedBox(width: 12.w),
          Expanded(
            child: TextFormField(
              controller: controller,
              enabled: toggleValue,
              style: TextStyles.font22black,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                hintText: hint,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsManager.fontGreen),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsManager.fontGreen),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsManager.fontGreen, width: 2),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                filled: true,
                fillColor: toggleValue
                    ? ColorsManager.backContainerGray
                    : ColorsManager.backContainerGray.withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Switch(
            value: toggleValue,
            onChanged: onToggleChanged,
            activeColor: ColorsManager.fontGreen,
          ),
        ],
      ),
    );
  }
}
