import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';

import '../../../../core/theming/font_styles.dart';

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text("مكتبة وفنون", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/book.png',
                text: 'مكتبة وفنون',
                onTap: () {},
              ),

            ],
          ),
        ),
      ],
    );
  }
}
