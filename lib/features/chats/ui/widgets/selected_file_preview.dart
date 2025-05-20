import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedFilePreview extends StatelessWidget {
  final PlatformFile file;

  const SelectedFilePreview({required this.file});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.insert_drive_file),
          SizedBox(width: 10),
          Text(file.name),
        ],
      ),
    );
  }
}
