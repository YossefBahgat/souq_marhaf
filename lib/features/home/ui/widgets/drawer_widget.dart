import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/helpers/extensions.dart';
import 'package:souq_marhaf/core/routing/routes.dart';
import 'package:souq_marhaf/core/theming/colors.dart';
import 'package:souq_marhaf/core/theming/font_styles.dart';
import 'package:souq_marhaf/features/home/ui/widgets/drawer_container.dart';
import 'package:souq_marhaf/features/site_policy/policy_screen.dart';

import '../../../log_in/ui/log_in_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerContainer(
            text: "تسجيل دخول / حساب جديد",
            icon: Icons.add,
            onPressed: () {
              //   Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (context) {
                  return LogInScreen();
                },
              );
            },
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          DrawerContainer(
            text: "سداد الرسوم والاشتراكات",
            icon: Icons.payments_outlined,
            onPressed: () {},
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          DrawerContainer(
            text: "مميزات وخدمات",
            icon: Icons.accessibility_new,
            onPressed: () {},
          ),
          SizedBox(height: 60.h),
          DrawerContainer(text: "اتصل بنا", icon: Icons.call, onPressed: () {}),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          DrawerContainer(
            text: "شارك تطبيق مرهف",
            icon: Icons.share,
            onPressed: () {},
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          DrawerContainer(
            text: "سياسة موقع مرهف",
            icon: Icons.edit_document,
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (context) {
              //     return PolicyScreen();
              //   },
              // );
              context.pushNamed(Routes.policyScreen);
            },
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          DrawerContainer(
            text: "مركز الامان",
            icon: Icons.edit_document,
            onPressed: () {
              context.pushNamed(Routes.safetyCenterScreen);
            },
          ),
          SizedBox(height: 60.h),
          DrawerContainer(
            text: "الوضع الليلى",
            icon: Icons.nightlight_outlined,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
