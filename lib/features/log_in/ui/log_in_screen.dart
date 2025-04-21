import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/font_styles.dart';
import 'package:souq_marhaf/features/log_in/ui/widgets/auth_container.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.h),
              child: Text("مرحباً", style: TextStyles.font80black),
            ),
            Center(child: AuthContainer()),
          ],
        ),
      ),
    );
  }
}
