import 'package:flutter/material.dart';
import 'package:apptoide/utils/colors.dart';
import '../utils/utils.dart';

class Header extends StatelessWidget {
  final bool isHome;

  const Header({Key key, @required this.isHome}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return isHome? Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text( "AppToide",
        style: AppTextStyles.headerTextStyle,
      ),
    ) : Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Search",
            style: AppTextStyles.headerTextStyle,
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 20.0,
            width: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: CustomColors.primaryColor.withOpacity(0.3),
            ),
            child: Center(
              child: Text(
                "Over 10M Apps!!",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}