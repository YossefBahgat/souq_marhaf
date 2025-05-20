import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller; // جعلنا الـ controller اختياري
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.emailAddress,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.68.sw,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        style: TextStyles.font22black,
        cursorOpacityAnimates: true,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.r)),
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.r)),
            borderSide: BorderSide(color: Colors.black, width: 2.5.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.r)),
            borderSide: BorderSide(color: Colors.black, width: 2.5.w),
          ),
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 40.w),
        ),
      ),
    );
  }
}
