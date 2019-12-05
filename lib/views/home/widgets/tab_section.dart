import 'package:apptoide/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class TabSection extends StatefulWidget {
  @override
  _TabSectionState createState() => _TabSectionState();
}

class _TabSectionState extends State<TabSection>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedTabIndex = 0;
  final List<String> _tabs = [
    "GAMES 🎮",
    "TRAVEL ✈",
    "BOOKS 📚",
    "PAID 💰",
    "SOCIAL MEDIA 📱"
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: TabBar(
        onTap: (index) {
          setState(() {
            selectedTabIndex = index;
          });
        },
        controller: tabController,
        unselectedLabelColor: Colors.deepOrange.withOpacity(0.6),
        isScrollable: true,
        indicator: BoxDecoration(
          color: CustomColors.primaryColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12.0),
        ),
        tabs: _tabs.map((tab) {
          var index = _tabs.indexOf(tab);
          return Tab(
            child: Text(
              tab,
              style: switchColor(index),
            ),
          );
        }).toList(),
      ),
    );
  }

  TextStyle switchColor(index) {
    return selectedTabIndex == index
        ? AppTextStyles.selectedTabTextStyle
        : AppTextStyles.unselectedTabTextStyle;
  }
}
