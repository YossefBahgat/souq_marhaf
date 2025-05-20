import 'package:flutter/material.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_text_button.dart';

import '../../../../core/theming/colors.dart';

class Sections extends StatelessWidget {
  const Sections({
    super.key,
    required this.selectedIndex,
    required this.onSectionSelected,
    required this.sections,
  });

  final int selectedIndex;
  final void Function(int index) onSectionSelected;
  final List<String> sections;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.appBarGreen,
      child: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return SectionsTextButton(
            text: sections[index],
            backgroundColor:
                selectedIndex == index
                    ? ColorsManager.chooseItemsGray
                    : Colors.transparent,
            onPressed: () => onSectionSelected(index),
          );
        },
      ),
    );
  }
}
