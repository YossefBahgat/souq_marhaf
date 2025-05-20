// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:souq_Morhaf/core/theming/colors.dart';
// import 'package:souq_Morhaf/core/theming/font_styles.dart';
// import 'package:souq_Morhaf/core/widgets/custom_app_bar.dart';
//
// class AddOfferScreen extends StatelessWidget {
//   const AddOfferScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(text: "اضافة عرض"),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 30.h),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25.r),
//                   color: ColorsManager.backContainerGray,
//                 ),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.add_photo_alternate_outlined,
//                       color: ColorsManager.lightGreen,
//                       size: 60,
//                     ),
//                     Text("إضافة صورة", style: TextStyles.font22greenSemibold),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 30.h),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 18.h),
//               width: double.infinity,
//               color: ColorsManager.backContainerGray,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "موقع السلعة",
//                     style: TextStyles.font22blackSemibold.copyWith(
//                       color: ColorsManager.black.withOpacity(0.70),
//                     ),
//                   ),
//                   SizedBox(height: 15.h),
//                   InkWell(
//                     onTap: () {},
//                     child: Text(
//                       "تغيير الموقع",
//                       style: TextStyles.font22greenSemibold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24.h),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 18.h),
//               width: double.infinity,
//               color: ColorsManager.backContainerGray,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "عنوان العرض",
//                     style: TextStyles.font22blackSemibold.copyWith(
//                       color: ColorsManager.black.withOpacity(0.70),
//                     ),
//                   ),
//                   SizedBox(height: 15.h),
//                   TextField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "مثال : كراسي",
//                       hintStyle: TextStyles.font25green,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24.h),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 18.h),
//               width: double.infinity,
//               color: ColorsManager.backContainerGray,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "القسم",
//                     style: TextStyles.font22blackSemibold.copyWith(
//                       color: ColorsManager.black.withOpacity(0.70),
//                     ),
//                   ),
//                   SizedBox(height: 15.h),
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 11.h,horizontal: 10.w),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25.r),
//                         color: ColorsManager.lightGreen.withOpacity(0.2),
//                         boxShadow: [
//                           BoxShadow(
//                             color: ColorsManager.black.withOpacity(0.1),
//                             blurRadius: 4,
//                             offset: Offset(0, 4),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(Icons.edit, color: ColorsManager.lightGreen),
//                           SizedBox(width: 11.w),
//                           Text(
//                             "سوق مرهف",
//                             style: TextStyles.font22greenSemibold,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 60.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.w),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Container(
//                   height: 70.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25.r),
//                     color: ColorsManager.buttonGreen,
//                   ),
//                   child: Center(
//                     child: Text("التالي", style: TextStyles.font30black),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
