import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

class ImagePickerDialog extends StatelessWidget {
  final VoidCallback onPickFromGallery;
  final VoidCallback onPickFromCamera;

  const ImagePickerDialog({
    super.key,
    required this.onPickFromGallery,
    required this.onPickFromCamera,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      title: const Text('اختر مصدر الصورة'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('اختر من المعرض'),
            onTap: () {
              Navigator.pop(context);
              onPickFromGallery();
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('التقط صورة'),
            onTap: () {
              Navigator.pop(context);
              onPickFromCamera();
            },
          ),
        ],
      ),
    );
  }
}