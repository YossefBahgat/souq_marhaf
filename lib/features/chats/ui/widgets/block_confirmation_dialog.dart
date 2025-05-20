import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';

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
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      contentPadding: EdgeInsets.all(20.w),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            username,
            style: TextStyles.font22blackSemibold.copyWith(color: Colors.red),
          ),
          SizedBox(height: 10.h),
          Text(
            "هل أنت متأكد من حظر $username؟\nلن تتمكن من رؤية عروضه.",
            textAlign: TextAlign.center,
            style: TextStyles.font17gray,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                  onConfirm();
                },
                child: const Text("حظر"),
              ),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("إلغاء"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
