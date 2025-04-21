import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:souq_marhaf/core/widgets/custom_text_button.dart';
import 'package:souq_marhaf/core/widgets/custom_text_form_field.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

// class OtpForm extends StatefulWidget {
//   final VoidCallback onOtpVerified;
//
//   const OtpForm({super.key, required this.onOtpVerified});
//
//   @override
//   State<OtpForm> createState() => _OtpFormState();
// }
//
// class _OtpFormState extends State<OtpForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _otpController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           CustomTextFormField(
//             controller: _otpController,
//             hintText: "ادخل الرمز المكون من 4 ارقام",
//             keyboardType: TextInputType.number,
//             validator: (value) {
//               if (value == null || value.isEmpty) return "الرمز مطلوب";
//               if (value.length != 6) return "الرمز يجب أن يتكون من 6 أرقام";
//               return null;
//             },
//           ),
//           SizedBox(height: 0.025.sh),
//           Transform.translate(
//             offset: Offset(0, 40.h),
//             child: CustomTextButton(
//               text: "تحقق من الرمز",
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   widget.onOtpVerified();
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class OtpForm extends StatefulWidget {
  const OtpForm({super.key, required this.onOtpVerified});
  final VoidCallback onOtpVerified;

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  String _enteredCode = '';
  final _formKey = GlobalKey<FormState>();
//   final _otpController = TextEditingController();

  void verifyOTP() {
    if (_enteredCode.length == 4) {
      widget.onOtpVerified();
    } else {
      // تقدر تعرض رسالة تنبيه هنا لو حبيت
      debugPrint("رمز غير مكتمل");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "ادخل الرمز المكون من 4 ارقام",
          style: TextStyles.font40green.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.mainGreen,
            decorationThickness: 1.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.w),
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (value) {
              _enteredCode = value;
            },
            // شيل onCompleted تمامًا
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              activeColor: Colors.black,
              inactiveColor: Colors.black,
              selectedColor: Colors.grey,
              borderRadius: BorderRadius.circular(50),
              fieldHeight: 50.h,
              fieldWidth: 40.w,
            ),
          ),
        ),
        TextButton(
          child: Text("اعادة ارسال الرمز", style: TextStyles.font22black),
          onPressed: () {
            // تقدر تضيف وظيفة لإعادة الإرسال هنا
          },
        ),
        CustomTextButton(
          text: "تحقق من الرمز",
          onPressed: verifyOTP,
        ),
      ],
    );
  }
}
