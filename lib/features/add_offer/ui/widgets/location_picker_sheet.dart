import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:souq_Morhaf/core/widgets/custom_text_button.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'add_photo.dart';

class LocationPickerSheet extends StatefulWidget {
  const LocationPickerSheet({super.key});

  @override
  State<LocationPickerSheet> createState() => _LocationPickerSheetState();
}

class _LocationPickerSheetState extends State<LocationPickerSheet> {
  LatLng? selectedLocation;

  late GoogleMapController mapController;

  void _onMapTap(LatLng position) {
    setState(() {
      selectedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
        child: Container(
          height: 800.h,
          color: ColorsManager.white,
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 60.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.gray,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text('حدد موقعك على الخريطة', style: TextStyles.font25black),
              SizedBox(height: 30.h),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(33.5138, 36.2765),
                      zoom: 10,
                    ),
                    onTap: _onMapTap,
                    onMapCreated: (controller) => mapController = controller,
                    markers:
                        selectedLocation != null
                            ? {
                              Marker(
                                markerId: const MarkerId('selected-location'),
                                position: selectedLocation!,
                              ),
                            }
                            : {},
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomTextButton(
                text: "تأكيد الموقع",
                onPressed:
                //selectedLocation == null
                //  ? null
                //:
                () {
                  //     Navigator.pop(context);
                  showModalBottomSheet(
                   isScrollControlled: true,
                    context: context,
                    backgroundColor: ColorsManager.white,
                    builder: (context) => AddPhoto(),
                  );
                },
              ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}

// onPressed:
// //selectedLocation == null
// //  ? null
// //:
// () {
// //     Navigator.pop(context);
// // هنا ترجع الاحداثيات أو تحفظها
// },
