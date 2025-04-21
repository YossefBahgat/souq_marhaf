import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/colors.dart';
import 'package:souq_marhaf/core/theming/font_styles.dart';
import 'package:souq_marhaf/features/site_policy/widgets/policy_container.dart';
import 'package:souq_marhaf/features/site_policy/widgets/privacy_policy_form.dart';
import 'package:souq_marhaf/features/site_policy/widgets/suspended_accounts_form.dart';
import 'package:souq_marhaf/features/site_policy/widgets/usage_form.dart';

import 'widgets/blocked_items_form.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.backDrawer,
        title: Text("سياسة موقع مرهف", style: TextStyles.font26blackSemibold),
        centerTitle: true,
      ),
      body: Column(
        children: [
          PolicyContainer(
            text: "سياسة الاستخدام",
            image: "assets/images/usage_policy.png",
            onPressed: () {   Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const UsageForm()),
            );},
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          PolicyContainer(
            text: "الحسابات والأرقام الموقوفة",
            image: "assets/images/suspended_accounts.png",
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SuspendedAccountsForm()),
            );},
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          PolicyContainer(
            text: "المواد المحظورة",
            image: "assets/images/blocked.png",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BlockedItemsForm()),
              );
            },
          ),
          Divider(height: 1.h, thickness: 1.h, color: Colors.black),
          PolicyContainer(
            text: "سياسة الخصوصية",
            image: "assets/images/privacy.png",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PrivacyPolicyForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}
