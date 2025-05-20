import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key, required this.icon, required this.onTap});
final IconData icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 58.w,
        height: 58.w,
        decoration: BoxDecoration(
          color: ColorsManager.backContainerGray,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.black,size: 25,),
      ),
    );
  }
}
