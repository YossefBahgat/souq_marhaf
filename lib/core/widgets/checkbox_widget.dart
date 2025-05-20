import 'package:flutter/material.dart';
import '../theming/colors.dart';
import '../theming/font_styles.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isConfirmed;
  final ValueChanged<bool?> onChanged;
  final String text;


  const CheckboxWidget({
    required this.isConfirmed,
    required this.onChanged, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isConfirmed,
          onChanged: onChanged,
          activeColor: ColorsManager.fontGreen,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyles.font22black,
          ),
        ),
      ],
    );
  }
}
