import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/widgets/custom_text_button.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'block_confirmation_dialog.dart';

class BlockReasonDialog extends StatefulWidget {
  const BlockReasonDialog({super.key});

  @override
  State<BlockReasonDialog> createState() => _BlockReasonDialogState();
}

class _BlockReasonDialogState extends State<BlockReasonDialog> {
  final commentController = TextEditingController();
  String? selectedAnswer;

  final List<String> reasons = [
    "يقوم هذا الحساب بتخريب  سلعتي",
    "هذا الحساب محتال",
    "نشر عروض مخالفة او وهمية",
    "أخرى",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 30.w),
          backgroundColor: ColorsManager.white,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Text(
                      "لماذا تقوم بالإبلاغ عن هذا الشخص؟",
                      style: TextStyles.font22greenSemibold,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(flex: 2),
                    IconButton(
                      icon: const Icon(Icons.close, size: 30),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                ...reasons.map(
                  (reason) => RadioListTile<String>(
                    value: reason,
                    groupValue: selectedAnswer,
                    radioScaleFactor: 1.3,
                    activeColor: ColorsManager.fontGreen,
                    onChanged: (value) {
                      setState(() {
                        selectedAnswer = value;
                      });
                    },
                    title: Text(reason, style: TextStyles.font22black),
                  ),
                ),
                if (selectedAnswer == "أخرى") ...[
                  SizedBox(height: 10.h),
                  TextField(
                    controller: commentController,
                    decoration: const InputDecoration(
                      hintText: "يرجى توضيح السبب",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ],
                SizedBox(height: 20.h),
                CustomTextButton(
                  text: "إرسال",
                  onPressed: () {
                    if (selectedAnswer == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("يرجى اختيار سبب البلاغ")),
                      );
                      return;
                    }

                    if (selectedAnswer == "أخرى" &&
                        commentController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("يرجى كتابة السبب عند اختيار 'أخرى'"),
                        ),
                      );
                      return;
                    }

                    final result =
                        selectedAnswer == "أخرى"
                            ? commentController.text.trim()
                            : selectedAnswer;

                    Navigator.pop(context, result);
                    showDialog(
                      context: context,
                      builder:
                          (context) => BlockConfirmationDialog(
                            username: "اسم_المستخدم",
                            onConfirm: () {
                              // نفذ عملية الحظر هنا
                            },
                          ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
