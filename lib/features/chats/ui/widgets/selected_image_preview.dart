import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedImagePreview extends StatelessWidget {
  final String imagePath;

  const SelectedImagePreview({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.file(
            File(imagePath),
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Text("صورة جاهزة للإرسال"),
        ],
      ),
    );
  }
}
