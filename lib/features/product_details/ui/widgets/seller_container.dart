import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/routing/routes.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/circle_avatar_username.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/follow_text_button.dart';

class SellerContainer extends StatefulWidget {
  const SellerContainer({
    super.key,
    required this.title,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.locationText,
 //   required this.productImagePath,
  });

  final String title;
  final String username;
  final String userImagePath;
  final String timeText;
  final String locationText;
//  final String productImagePath;

  @override
  State<SellerContainer> createState() => _SellerContainerState();
}

class _SellerContainerState extends State<SellerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      padding: EdgeInsets.symmetric(horizontal: 42.w),
      color: ColorsManager.backContainerGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(widget.title, style: TextStyles.font25green),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: ColorsManager.lightGreen,
                  ),
                  SizedBox(width: 10.w),
                  Text(widget.timeText, style: TextStyles.font25green),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.place_outlined, color: ColorsManager.lightGreen),
                  SizedBox(width: 10.w),
                  Text(widget.locationText, style: TextStyles.font25green),
                ],
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.sellerDetailsScreen,
                    arguments: {
                      'username': widget.username,
                      'userImagePath': widget.userImagePath,
                    },
                  );
                },
                child: CircleAvatarUsername(
                  username: widget.username,
                  userImagePath: widget.userImagePath,
                ),
              ),
              Spacer(flex: 5),
              FollowTextButton(),
              Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}
