import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ReportContainer extends StatelessWidget {
  ReportContainer({super.key});

  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 300.h),
      backgroundColor: ColorsManager.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Spacer(),
                  Text("إبلاغ عن مخالفة", style: TextStyles.font25greenSemibold),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close, size: 30),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              //    SizedBox(height: 20.h),
              Text("هل العرض مخالف ؟", style: TextStyles.font25black),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle_outlined, color: ColorsManager.fontGreen),
                      SizedBox(width: 14.w,),

                      Text("نعم", style: TextStyles.font20black),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.circle_outlined, color: ColorsManager.fontGreen),
                      SizedBox(width: 14.w,),

                      Text("لا", style: TextStyles.font20black),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10.h),
              TextField(
              //  style: TextStyle(backgroundColor: ColorsManager.gray),
                controller: commentController,
                decoration: const InputDecoration(
                  fillColor: Colors.black,
                  hintText: "اكتب تعليقك هنا...",
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("إرسال", style: TextStyles.font25black),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.buttonGreen,
                  minimumSize: Size(double.infinity, 65.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
              ),
              SizedBox(height: 10.h),

            ],
          ),
        ),
      ),
    );
  }
}
