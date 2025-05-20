import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../core/theming/font_styles.dart';

class SafetyCenterScreen extends StatelessWidget {
  const SafetyCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.appBarGreen),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        children: [
          SelectableText(
            "مركز الأمان Safety Center",
            style: TextStyles.font30green,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: SelectableText(
              "الحماية من استغلال البشر (الاتجار بالبشر ، المتاجرة بالاعضاء)",
              style: TextStyles.font30green,
              textAlign: TextAlign.center,
            ),
          ),

          SelectableText(
            "Protection from human exploitation (human trafficking, organ trafficking)",
            style: TextStyles.font30green,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50.h),
          Text(
            "نعمل في سوق مرهف مع هيئة حقوق الإنسان في سوريا",
            style: TextStyles.font22black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Text('سوريا https://www.hrc.gov.sa لمكافحة الاتجار بالبشر وحماية حقوق العمالة الوافدة وتوفير الموارد اللازمة التقنية والوقائية والتوعوية ومساعدة ضحايا الاتجار بالبشر ولا نقبل استغلال السوق لأي أغراض تتعارض مع أنظمة حقوق الإنسان المحلية والعالمية. حيث يحظر النظام في سوريا – بناءً على المعايير الدولية والإقليمية لمكافحة جرائم الاتجار بالأشخاص- جميع أشكال المتاجرة بالأشخاص الموصوفة في بروتوكول منع ومعاقبة الاتجار بالبشر، وبخاصة النساء والأطفال المكمل لاتفاقية الأمم المتحدة لمكافحة الجريمة المنظمة عبر الوطنية (بروتوكول باليرم). وعندما نرصد محتوى ينتهك أنظمة حقوق الإنسان فإننا لا نتهاون في إحالة المحتوى إلى هيئة حقوق الإنسان وإيقاف عضوية المستخدم المخالف.'
             , style: TextStyles.font22black,
            ),
          ),
        ],
      ),
    );
  }
}
