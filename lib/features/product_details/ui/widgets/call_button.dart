import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'connection_container.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return ConnectionContainer(phoneNumber: phoneNumber);
            },
          );
        },
        child: Container(
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: ColorsManager.buttonGreen,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call, color: ColorsManager.fontGreen),
              SizedBox(width: 5.w),
              Text("اتصال", style: TextStyles.font22black),
            ],
          ),
        ),
      ),
    );
  }
}
