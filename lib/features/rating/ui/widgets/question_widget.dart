import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const QuestionWidget({
    required this.question,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyles.font22black,
            children: [
              TextSpan(text: question),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Transform.scale(
              scale: 1.3,
              child: Radio<String>(
                value: 'yes',
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: ColorsManager.fontGreen,
              ),
            ),
            Text('نعم', style: TextStyles.font22black),
            Spacer(),
            Transform.scale(
              scale: 1.3,
              child: Radio<String>(
                value: 'no',
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: ColorsManager.fontGreen,
              ),
            ),
            Text('لا', style: TextStyles.font22black),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
