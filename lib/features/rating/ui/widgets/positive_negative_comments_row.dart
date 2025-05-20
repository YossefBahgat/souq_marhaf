import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class PositiveNegativeCommentsRow extends StatelessWidget {
  const PositiveNegativeCommentsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCommentRow(Icons.thumb_up_alt_rounded, "تعليق إيجابي"),
          _buildCommentRow(Icons.thumb_down_alt_rounded, "تعليق سلبي"),
        ],
      ),
    );
  }

  Widget _buildCommentRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: ColorsManager.fontGreen),
        Text("  0  ", style: TextStyles.font20black),
        Text(text, style: TextStyles.font20black),
      ],
    );
  }
}
