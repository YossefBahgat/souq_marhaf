import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';

class ChatMessageWidget extends StatelessWidget {
  final bool isSender;
  final String message;
  final DateTime timestamp;
  final bool isSeen;
  final bool isImage;
  final bool isFile;

  const ChatMessageWidget({
    super.key,
    required this.isSender,
    required this.message,
    required this.timestamp,
    required this.isSeen,
    required this.isImage,
    required this.isFile,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          color: isSender ? ColorsManager.chats : ColorsManager.appBarGreen,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.r),
            topRight: Radius.circular(18.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isImage)
              Image.file(
                File(message),
                width: 200.w,
                height: 150.h,
                fit: BoxFit.cover,
              )
            else if (isFile)
              Text(
                "📄 ${message.split('/').last}",
                style: TextStyles.font20black,
              )
            else
              Text(message, style: TextStyles.font20black),
            SizedBox(height: 5.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(isSeen ? Icons.done_all : Icons.check, size: 18.w),
                SizedBox(width: 6.w),
                Text(
                  "${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}",
                  style: TextStyles.font14black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
