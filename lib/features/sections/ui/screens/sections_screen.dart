import 'package:flutter/material.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/animals_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/cars_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/devices_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/drinks_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/furniture_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/hunting_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/jobs_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/library_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/parties_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/personal_supplies_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/programming_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/realty_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/recommended_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_body.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/services_body.dart';
import '../../../../core/theming/font_styles.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({super.key});

  @override
  State<SectionsScreen> createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  int selectedIndex = 0;

  final Map<String, Widget> sectionsMap = {
    "موصي به": const RecommendedBody(),
    "مرهف السيارات": const CarsBody(),
    "مرهف العقار": const RealtyBody(),
    "مرهف الأجهزة": const DevicesBody(),
    "مواشي وحيوانات وطيور": const AnimalsBody(),
    "اثاث": const FurnitureBody(),
    "مستلزمات شخصية": const PersonalSuppliesBody(),
    "خدمات": const ServicesBody(),
    "وظائف": const JobsBody(),
    "اطعمة ومشروبات": const DrinksBody(),
    "برمجة وتصاميم": const ProgrammingBody(),
    "مكتبة وفنون": const LibraryBody(),
    "صيد ورحلات": const HuntingBody(),
    "حفلات ومنسبات": const PartiesBody(),
  };

  @override
  Widget build(BuildContext context) {
    final List<String> sections = sectionsMap.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("الاقسام", style: TextStyles.font26blackSemibold),
        backgroundColor: ColorsManager.appBarGreen,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Sections(
              selectedIndex: selectedIndex,
              onSectionSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              sections: sections,
            ),
          ),
          Expanded(
            flex: 2,
            child: sectionsMap[sections[selectedIndex]] ?? const SizedBox(),
          ),
        ],
      ),
    );
  }
}
