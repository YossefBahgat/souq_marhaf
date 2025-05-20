import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class WatchSuppliesRow extends StatefulWidget {
  const WatchSuppliesRow({super.key});

  @override
  _ToyotaCarRowState createState() => _ToyotaCarRowState();
}

class _ToyotaCarRowState extends State<WatchSuppliesRow> {
  String selectedItem = 'الكل';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 10.w,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedItem = 'الكل';
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                height: 53.h,
                decoration: BoxDecoration(
                  color: selectedItem == 'الكل' ? ColorsManager.lightGreen : ColorsManager.appBarGreen,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                alignment: Alignment.center,
                child: Text(
                    "الكل",
                    style: TextStyles.font22black
                ),
              ),
            ),
            _buildCarItem('ساعات رجالية'),
            _buildCarItem('ساعات نسائية'),
            _buildCarItem('ساعات أخري'),
          ],
        ),
      ),
    );
  }
  Widget _buildCarItem(String car) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: ItemsTypeContainer(
        text: car,
        onTap: () {
          setState(() {
            selectedItem = car;
          });
        },
        isSelected: selectedItem == car,
      ),
    );
  }
}
