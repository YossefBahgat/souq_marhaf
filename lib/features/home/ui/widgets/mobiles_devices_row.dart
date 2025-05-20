import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class MobilesDevicesRow extends StatefulWidget {
  const MobilesDevicesRow({super.key});

  @override
  _MobilesDevicesRowState createState() => _MobilesDevicesRowState();
}

class _MobilesDevicesRowState extends State<MobilesDevicesRow> {
  String selectedItem = 'الكل';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
            _buildMobileItem('أبل'),
            _buildMobileItem('سامسونج'),
            _buildMobileItem('هواوي'),
            _buildMobileItem('سوني'),
            _buildMobileItem('بلاك بيري'),
            _buildMobileItem('نوكيا'),
            _buildMobileItem('إتش تي سي'),
            _buildMobileItem('شاومى'),
            _buildMobileItem('اوبو'),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileItem(String mobile) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: ItemsTypeContainer(
        text: mobile,
        onTap: () {
          setState(() {
            selectedItem = mobile;
          });
        },
        isSelected: selectedItem == mobile,
      ),
    );
  }
}
