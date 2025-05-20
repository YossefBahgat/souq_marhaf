import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/routing/routes.dart';
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
  bool _isButtonPressed = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onItemTapped(index);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildNavItem(icon: Icons.home_filled, index: 0, label: 'مرهف'),
                _buildNavItem(icon: Icons.favorite, index: 1, label: 'المفضلة'),
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
      offset: Offset(0, -30.h),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isButtonPressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            _isButtonPressed = false;
          });
          Navigator.pushNamed(context, Routes.addNewOfferScreen);
        },
        onTapCancel: () {
          setState(() {
            _isButtonPressed = false;
          });
        },
        child: AnimatedScale(
          scale: _isButtonPressed ? 0.9 : 1.0,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
          child: Container(
            width: 90.w,
            height: 90.h,
            decoration: BoxDecoration(
              color: ColorsManager.fontGreen,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: ColorsManager.fontGreen.withOpacity(0.4),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Icon(Icons.add, color: Colors.white, size: 45.sp),
          ),
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        padding: EdgeInsets.only(top: isSelected ? 0.h : 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, isSelected ? -8.h : 0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isSelected ? 70.w : 60.w,
                height: isSelected ? 70.h : 60.h,
                child: Icon(
                  icon,
                  color: isSelected ? ColorsManager.fontGreen : Colors.grey,
                  size: isSelected ? 55.sp : 45.sp,
                ),
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: isSelected
                  ? TextStyles.font22green
                  : TextStyles.font20gray,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}