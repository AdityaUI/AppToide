import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../widgets/category_card.dart';
class TileSection extends StatefulWidget {
  @override
  _TileSectionState createState() => _TileSectionState();
}

class _TileSectionState extends State<TileSection> {
  int selectedCardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildCategoryCard(0, CustomColors.orange, '24', 'Apps', context),
            _buildCategoryCard(1, CustomColors.red, 'My', '   Stats  ⬅➡', context),
            _buildCategoryCard(
                2, CustomColors.blue, '2GB', 'Storage left', context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
      int index,
      Color color,
      String top,
      String bottom,
      BuildContext context,
      ) {
    return CategoryCard(
      index: index,
      selectedCardIndex: selectedCardIndex,
      color: color,
      top: top,
      bottom: bottom,
      onPressed: () => selectCategory(index),
    );
  }

  void selectCategory(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }
}