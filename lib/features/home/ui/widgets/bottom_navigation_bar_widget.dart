import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final Function(int) onItemTapped;

  const BottomNavigationBarWidget({super.key, required this.onItemTapped});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Stack(
        //  clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildNavItem(icon: Icons.home_filled,
                    index: 0,
                    label: 'مرهف'),
                _buildNavItem(
                  icon: Icons.manage_search,
                  index: 1,
                  label: 'الاقسام',
                ),
                _buildCenterButton(),
                _buildNavItem(
                  icon: Icons.notifications,
                  index: 2,
                  label: 'الاشعارات',
                ),

                _buildNavItem(
                  icon: Icons.message_outlined,
                  index: 3,
                  label: 'الرسائل',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCenterButton() {
    return Transform.translate(
      offset: Offset(-2, -50.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 90.w,
          height: 90.h,
          decoration: BoxDecoration(
            color: ColorsManager.mainGreen,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorsManager.mainGreen,
                blurRadius: 1,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Icon(Icons.add, color: Colors.white, size: 40.sp),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String label,
    required IconData icon,
  }) {
    bool isSelected = _selectedIndex == index;

    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            //   curve: Curves.easeInOut,
            width: isSelected ? 80.w : 80.w,
            height: isSelected ? 80.h : 65.h,
            transform: Matrix4.translationValues(
              0,
              isSelected ? -15.h : 0.h,
              0,
            ),
            child: Icon(icon, color: ColorsManager.mainGreen, size: 50.sp),
          ),
          Text(label, style: TextStyles.font22green),
        ],
      ),
    );
  }
}
