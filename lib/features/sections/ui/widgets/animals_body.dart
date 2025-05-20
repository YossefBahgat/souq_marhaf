import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';

import '../../../../core/theming/font_styles.dart';

class AnimalsBody extends StatelessWidget {
  const AnimalsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text("مواشي وحيوانات وطيور", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/cat.png',
                text: 'قطط',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/camel.png",
                      text: "ابل",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/sheep.png",
                      text: "غنم",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/goat.png",
                      text: "ماعز",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/dog.png",
                      text: "كلاب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/hourse.png",
                      text: "خيل",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/parrot.png",
                      text: "ببغاء",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/fish.png",
                      text: "أسماك",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/hen.png",
                      text: "دجاج",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/squirrel.png",
                      text: "سناجب",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/cow.png",
                      text: "بقر",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SectionsItemsContainer(
                image: 'assets/images/dove.png',
                text: 'حمام',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/duck.png",
                      text: "بط",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/rabbit.png",
                      text: "ارانب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
