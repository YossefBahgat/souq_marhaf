import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:souq_Morhaf/core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../logic/brand_type_cubit.dart';
import 'image_grid.dart';
import 'image_picker_bottom_sheet.dart';


class AddPhoto extends StatefulWidget {
  const AddPhoto({super.key});

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  final ImagePicker _picker = ImagePicker();
  List<File> _imageFiles = [];

  Future<void> _pickImagesFromGallery() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _imageFiles.addAll(pickedFiles.map((file) => File(file.path)));
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      setState(() {
        _imageFiles.add(File(pickedFile.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _imageFiles.removeAt(index);
    });
  }

  void _showImageSourceActionSheet(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => ImagePickerDialog(
        onPickFromGallery: _pickImagesFromGallery,
        onPickFromCamera: _pickImageFromCamera,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900.h,
      child: Column(
        children: [
          SizedBox(height: 12.h),
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
          Text('تحميل الصور', style: TextStyles.font25black),
          SizedBox(height: 30.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: GestureDetector(
                onTap: () => _showImageSourceActionSheet(context),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: ColorsManager.black),
                  ),
                  child:
                      _imageFiles.isEmpty
                          ? Center(
                            child: Text(
                              "إسحب وأسقط أو اضغط هنا لاختيار الصور",
                              style: TextStyles.font25black,
                              textAlign: TextAlign.center,
                            ),
                          )
                          : _imageFiles.isEmpty
                          ? Center(
                        child: Text(
                          "إسحب وأسقط أو اضغط هنا لاختيار الصور",
                          style: TextStyles.font25black,
                          textAlign: TextAlign.center,
                        ),
                      )
                          : GridView.builder(
                        padding: EdgeInsets.all(8),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 3 صور في الصف
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1, // مربع الصور
                        ),
                        itemCount: _imageFiles.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.file(
                                  _imageFiles[index],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                              Positioned(
                                right: 4,
                                top: 4,
                                child: GestureDetector(
                                  onTap: () => _removeImage(index),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),

                ),
              ),
            ),
          ),
          SizedBox(height: 40.h),
          CustomTextButton(
            text: 'استمرار',
            onPressed: () {
              context.read<AddOfferCubit>().addImages(_imageFiles);
              Navigator.pushNamed(context, Routes.addOfferCompletedScreen);
            },
          ),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
