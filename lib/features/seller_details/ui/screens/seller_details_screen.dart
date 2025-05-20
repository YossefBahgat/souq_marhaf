import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/core/widgets/circle_avatar_column.dart';
import 'package:souq_Morhaf/core/widgets/follow_text_button.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/star_rating.dart';
import '../../../home/ui/widgets/items_on_display.dart';
import '../../../product_details/ui/widgets/more_settings_container.dart';
import '../../../product_details/ui/widgets/product_details_args.dart';
import '../widgets/icon_container.dart';

class SellerDetailsScreen extends StatelessWidget {
  const SellerDetailsScreen({
    super.key,
    required this.username,
    required this.userImagePath,
  });

  final String username;
  final String userImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 286.h,
              color: ColorsManager.appBarGreen,
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    IconContainer(
                      icon: Icons.share,
                      onTap: () {
                        print("تم الضغط على زر المشاركة");
                        final String profileLink = "https://www.yourprofilelink.com/$username";
                        Share.share('شاهد الملف الشخصي الخاص بي: $profileLink');
                      },
                    ),

                    SizedBox(width: 20.w),
                    IconContainer(
                      icon: Icons.more_vert_sharp,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return MoreSettingsContainer(
                              userImagePath: userImagePath,
                              username: username,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FollowTextButton(),
                  SizedBox(width: 10.w),
                  Transform.translate(
                    offset: Offset(0, -35.h),
                    child: CircleAvatarColumn(
                      username: username,
                      userImagePath: userImagePath,
                    ),
                  ),
                  StarRating(),
                ],
              ),
            ),
            SizedBox(height: 87.h),
            Column(
              spacing: 5.h,
              children: [
                Icon(Icons.calendar_month, color: ColorsManager.fontGreen, size: 40.h),
                Text("سنة", style: TextStyles.font22black),
              ],
            ),
            SizedBox(height: 34.h),
            Container(
              color: ColorsManager.backContainerGray,
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.chatsScreen,
                    arguments: {
                      'username': username,
                      'userImagePath': userImagePath,
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15.w,
                  children: [
                    Text("محادثة", style: TextStyles.font28green),
                    Icon(
                      Icons.message_outlined,
                      color: ColorsManager.fontGreen,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 34.h),
            Column(
              children: [
                Text("العروض", style: TextStyles.font22green),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 250.w),
                  child: Divider(color: ColorsManager.fontGreen, thickness: 5),
                ),
              ],
            ),
            SizedBox(height: 64.h),
            ItemsOnDisplay(
              title: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
              username: "zaky200",
              userImagePath: "assets/images/user.png",
              timeText: "الان",
              locationText: "حلب",
              productImagePath: "assets/images/dress.png",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.productDetailsScreen,
                  arguments: ProductDetailsArgs(
                    subject: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
                    username: "zaky200",
                    userImagePath: "assets/images/user.png",
                    timeText: "الان",
                    region: "حلب",
                    productImagePath: "assets/images/dress.png",
                  ),
                );
              },
            ),
            SizedBox(height: 51.h),
            Text("لا يوجد مزيد من العروض", style: TextStyles.font22green),
          ],
        ),
      ),
    );
  }
}
