import 'package:flutter/material.dart';
import '../../../../core/theming/font_styles.dart';

class OathTextWidget extends StatelessWidget {
  final String username;

  const OathTextWidget({
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyles.font25black,
        children: [
          TextSpan(
            text: "أتعهد وأقسم بالله أنني قمت بشراء سلعة من العضو ",
          ),
          TextSpan(
            text: username,
            style: TextStyles.font26blackSemibold,
          ),
          TextSpan(
            text: " وأن المعلومات التي أقدمها في التقييم صحيحة وأتحمل مسؤولية صحتها.",
          ),
        ],
      ),
    );
  }
}
