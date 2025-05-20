import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ReportDialog extends StatefulWidget {
  const ReportDialog({super.key});

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  final commentController = TextEditingController();
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
          backgroundColor: ColorsManager.white,
          child: Container(
            padding: EdgeInsets.all(30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Text(
                      "إبلاغ عن مخالفة",
                      style: TextStyles.font25greenSemibold,
                    ),
                    const Spacer(flex: 2),
                    IconButton(
                      icon: const Icon(Icons.close, size: 30),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "هل العرض مخالف ؟",
                    style: TextStyles.font25black,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3, // تضاعف حجم الدائرة هنا
                      child: Radio<String>(
                        value: 'yes',
                        groupValue: selectedAnswer,
                        onChanged: (value) {
                          setState(() {
                            selectedAnswer = value;
                          });
                        },
                        activeColor: ColorsManager.fontGreen,
                      ),
                    ),
                    Text('نعم', style: TextStyles.font22black),
                    Spacer(),
                    Transform.scale(
                      scale: 1.3, // تضاعف حجم الدائرة هنا
                      child: Radio<String>(
                        value: 'no',
                        groupValue: selectedAnswer,
                        onChanged: (value) {
                          setState(() {
                            selectedAnswer = value;
                          });
                        },
                        activeColor: ColorsManager.fontGreen,
                      ),
                    ),
                    Text('لا', style: TextStyles.font22black),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 20.h),
                TextField(
                  controller: commentController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                   enabledBorder: InputBorder.none,
                   focusedBorder: InputBorder.none,
                    filled: true,
                    fillColor: ColorsManager.gray,
                    hintText: "اكتب تعليقك هنا...",
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.buttonGreen,
                    minimumSize: Size(double.infinity, 65.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  child: Text("إرسال", style: TextStyles.font25black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
