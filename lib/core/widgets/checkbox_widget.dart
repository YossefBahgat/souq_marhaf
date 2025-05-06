import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isConfirmed;
  final ValueChanged<bool?> onChanged;

  const CheckboxWidget({
    required this.isConfirmed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isConfirmed,
          onChanged: onChanged,
          activeColor: ColorsManager.buttonGreen,
        ),
        Expanded(
          child: Text(
            "أوافق على هذا التعهد",
            style: TextStyles.font22black,
          ),
        ),
      ],
    );
  }
}
