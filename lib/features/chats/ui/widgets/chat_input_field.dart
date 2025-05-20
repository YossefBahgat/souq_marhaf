import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController messageController;
  final VoidCallback onSendMessage;
  final VoidCallback onAttachmentPressed;
  final VoidCallback onCameraPressed;

  const ChatInputField({
    super.key,
    required this.messageController,
    required this.onSendMessage,
    required this.onAttachmentPressed,
    required this.onCameraPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorsManager.black),
                color: ColorsManager.chats,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          hintText: "اكتب رسالة",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 10.h,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Transform.rotate(
                        angle: 130 * 3.1415927 / 180,
                        child: Icon(
                          Icons.attachment,
                          color: ColorsManager.black,
                        ),
                      ),
                      onPressed: onAttachmentPressed,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: ColorsManager.black,
                      ),
                      onPressed: onCameraPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 27.w),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsManager.fontGreen,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: onSendMessage,
              child: Transform.rotate(
                angle: 130 * 3.1415927 / 180,
                child: Icon(Icons.send, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
