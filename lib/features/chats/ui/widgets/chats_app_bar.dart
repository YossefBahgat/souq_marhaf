import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../seller_details/ui/widgets/block_confirmation_dialog.dart';

class ChatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBar({
    super.key,
    required this.username,
    required this.userImagePath,
  });

  final String username;
  final String userImagePath;

  @override
  Size get preferredSize => Size.fromHeight(110.h);

  @override
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.appBarGreen,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 26.r,
                backgroundImage: userImagePath.isNotEmpty
                    ? AssetImage(userImagePath)
                    : const AssetImage('assets/images/default_user.png'),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Text(
                  username,
                  style: TextStyles.font22blackSemibold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_vert, size: 28, color: ColorsManager.black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => BlockConfirmationDialog(
                      username: username,
                      onConfirm: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("تم حظر المستخدم")),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      toolbarHeight: 180.h,
    );
  }

}

