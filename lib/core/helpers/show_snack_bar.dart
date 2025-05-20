import 'package:flutter/material.dart';

class ShowSnackBarHelper {
  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(
      Navigator.of(context, rootNavigator: true).context, // ✨ دي الإضافة المهمة
    ).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}

