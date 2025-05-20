import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import '../../../../core/theming/colors.dart';

class BrandHeader extends StatelessWidget {
  const BrandHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 3),
        Text("ماركة السيارة", style: TextStyles.font25black),
        const Spacer(flex: 2),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close, color: ColorsManager.black),
        ),
      ],
    );
  }
}
