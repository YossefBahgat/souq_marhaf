import 'dart:io'; // أضف هذا السطر

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import '../../../../core/widgets/circle_avatar_username.dart';
import '../../../favorite/logic/favorites_provider.dart';
import '../../../home_chats/ui/screens/chats_screen.dart';

class ItemsOnDisplay extends StatefulWidget {
  final String title;
  final String username;
  final String userImagePath;
  final String timeText;
  final String locationText;
  final String productImagePath;
  final VoidCallback onTap;

  const ItemsOnDisplay({
    super.key,
    required this.title,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.locationText,
    required this.productImagePath,
    required this.onTap,
  });

  @override
  State<ItemsOnDisplay> createState() => _ItemsOnDisplayState();
}

class _ItemsOnDisplayState extends State<ItemsOnDisplay> {
  late FavoriteItem favoriteItem;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    favoriteItem = FavoriteItem(
      title: widget.title,
      image: widget.productImagePath,
    );
  }

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    isFavorite = favoritesProvider.isFavorite(favoriteItem);

    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.title,
                              style: TextStyles.font22green,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              favoritesProvider.toggleFavorite(favoriteItem);
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        children: [
                          CircleAvatarUsername(
                            username: widget.username,
                            userImagePath: widget.userImagePath,
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: ColorsManager.iconGray,
                                    size: 19,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    widget.timeText,
                                    style: TextStyles.font17gray,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    color: ColorsManager.iconGray,
                                    size: 19,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    widget.locationText,
                                    style: TextStyles.font17gray,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                //   SizedBox(width: 20.w),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child:
                      widget.productImagePath.startsWith('/data')
                          ? Image.file(
                            File(widget.productImagePath),
                            height: 180.h,
                            width: 180.w,
                            fit: BoxFit.cover,
                          )
                          : Image.asset(
                            widget.productImagePath,
                            height: 180.h,
                            width: 180.w,
                            fit: BoxFit.cover,
                          ),
                ),
              ],
            ),
          ),
          Divider(color: ColorsManager.gray, thickness: 1),
        ],
      ),
    );
  }
}
