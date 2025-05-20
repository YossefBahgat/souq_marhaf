import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class BlockConfirmationDialog extends StatelessWidget {
  final String username;
  final VoidCallback onConfirm;

  const BlockConfirmationDialog({
    super.key,
    required this.username,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 40.w),
      backgroundColor: ColorsManager.white,
      child: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "حظر المستخدم",
              style: TextStyles.font25red,
            ),
            SizedBox(height: 35.h),
            Text(
              "هل أنت متأكد من حظر $username؟ لن نتمكن من رؤية عروضه.",
              style: TextStyles.font22black,
              textAlign: TextAlign.center,
            ),
        //    SizedBox(height: 60.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 60.w,vertical: 40.h),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.buttonGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        onConfirm();
                      },
                      child: Text("حظر", style: TextStyles.font22black),
                    ),
                  ),
                  SizedBox(width: 60.w),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        side:  BorderSide(color: ColorsManager.lightGreen),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text("إلغاء", style: TextStyles.font22black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
