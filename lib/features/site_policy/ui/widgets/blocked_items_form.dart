import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/font_styles.dart';

class BlockedItemsForm extends StatelessWidget {
  const BlockedItemsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.appBarGreen),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 80.w),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: SelectableText(
              "السلع والإعلانات الممنوعة",
              style: TextStyles.font30green,
              textAlign: TextAlign.center,
            ),
          ),
          Text("السلع الممنوعة", style: TextStyles.font25green),
          SizedBox(height: 18.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "السلعة الموضحة هي السلع الممنوعة في الموقع. هذه السلع ممنوع الاعلان عنها في الموقع و ممنوع ايضا شرائها عبر الموقع. نحن نقوم بحظر المعلن الذي يقوم بالاعلان عن هذه السلع و نقوم بحظر من يتجاوب معه عبر الرسائل الخاصة أو عبر الردود. نرجو ملاحظة ان ليس هناك تنبيه قبل الحظر وان الحظر نهائي لانقاش فيه.",
              style: TextStyles.font23gray,
            ),
          ),
          SizedBox(height: 36.h),

          Text("السلع الممنوعة هي : ", style: TextStyles.font25black),
          SizedBox(height: 31.h),

          Text("""جميع السلع الممنوعة حسب قوانين سورية

التقسيط و المنتجات البنكية. هذه السلع ممنوعه حتى لوكانت تعتبر شرعية.

الأدوية والمنتجات الطبية والصحية‫.‬ هذه السلع ممنوعه حتى لو كان مسموح بها في قوانين وزارة الصحة وحتى لو كانت سلع موصى بها من الوازرة.

التسويق الشبكي‫.‬ يمنع نهائيا اي نوع من التسويق الشبكي مهما كان نوعه او صفته أو طريقته.

الأسلحة بمافيها الصواعق والمسدسات و الرشاشات واسلحة الحماية الشخصية و مستلزماتها حتى لو كانت مرخصة.

المنتجات الجنسية بكافة أشكالها وأنواعها‫.‬
الأسهم و إدارة المحافظ والعملات وتسويقها وجميع مايتعلق بذلك.

أجهزة الليزر وأجهزة التجسس و التنصت.
المواقع والمنتديات والخدمات الإلكترونية والإيميلات وبيع العضويات والبرامج.

بيع أي سلعه مجانية. مثال على ذلك الإيميلات وحسابات تويتر وانستقرام وغيرها.

السلع التي فيها إعتداء على حقوق الملكية الفكرية مثلا البرامج المنسوخة والأفلام المنسوخة.

منتجات التبغ
الإعلان عن منتجات أو خدمات تتطلب ترخيص من دون الحصول على الترخيص من الجهة المنظمة.

الأجهزة الممنوعة مثل: أجهزة التشويش أو التشفير أو تقوية إشارة الجوال.

الأجهزة ذات المخاطر الأمنية.

الإعلان عن شرائح اتصال او خدمات اتصالات من دون الحصول على التراخيص اللازمة و من دون رفعها لنظام التراخيص بالموقع.

جمع وبيع البيانات ومخالفة نظام حماية البيانات الشخصية""",
            style: TextStyles.font22black,
          ),
          SizedBox(height: 150.h),

        ],
      ),
    );
  }
}
