import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';

class CommentFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const CommentFieldWidget({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.gray,
        hintText: "اكتب تعليقك هنا...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
      maxLines: 3,
    );
  }
}
