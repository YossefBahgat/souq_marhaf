import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';



class SuspendedAccountsForm extends StatelessWidget {
  const SuspendedAccountsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.appBarGreen),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 90.w),
        children: [
          SelectableText(
            "الحسابات والأرقام الموقوفة",
            style: TextStyles.font40greenSemibold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          Text(
            "ابحث في الحسابات والأرقام الموقوفة",
            style: TextStyles.font30black,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: Text(
              "قائمة الحسابات والأرقام الموقوفة هي قائمة بأرقام حسابات وأرقام جوالات من يقومون بإساءة إستخدام الموقع لأغراض ممنوعه مثل الغش أو الأحتيال أو مخالفة قوانين الموقع",
              style: TextStyles.font23gray,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 89.h),

          Text("ارشادات البيع والتعامل",
            style: TextStyles.font22blackSemibold,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Text(
              "تجبنب حالات النصب والاحتيال ",
              style: TextStyles.font22blackSemibold,
            ),
          ),
          Text("""يفضل التعامل وجهًا لوجه - عند اتباعك لهذه القاعدة فأنت تتجنب 99٪ من محاولات الاحتيال.

اطلع على تقييمات المعلن وآراء الآخرين حوله وفترة انضمامه للموقع.

تجنب أعطاء بيانات حسابك في مرهف لأي شخص حتى لو ادعى انه من موظفي مرهف

تتم المعاملات بين طرفين فقط، وجود طرف ثالث قد يعني الاحتيال.

تجنب قبول الشيكات أو المبالغ المالية (الصرف) قبولك لمبالغ مالية مزيفة قد يحملك المسؤولية في البنوك.

كيف تعرف المحتال
عدم القدرة أو رفض الالتقاء وجهاً لوجه لإتمام الصفقة.

طلب الدفع أو تحويل الأموال عن طريق Western Union, Paypal.

السؤال عن السلعة بطريقة غريبة.

السلامة الشخصية
عند مقابلة الطرف الآخر للمرة الأولى تذكر : أن تكون نقطة الالتقاء في مكان (عام مثل: مقهى أو بنك أو مركز تسوق) تجنب الالتقاء به في مكان منعزل، أو دعوته إلى منزلك.

كن حذرا عند شراء السلع الثمينة.

أخبر صديقًا أو فردًا من العائلة قبل مقابلتك للطرف الآخر.

في حالة تعرضك لعملية نصب توجه للجهات الأمنية أو بلغ عبر بوابة كلنا أمن.""",
            style: TextStyles.font22black,
          ),
          SizedBox(height: 40.h),

        ],
      ),
    );
  }
}
