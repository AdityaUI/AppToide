import 'package:flutter/material.dart';
import '../utils/colors.dart';

class AppConstants {
  static const appName = "flutter-ghana-ui-challenge-week-1";
}

class AppTextStyles {
  static const headerTextStyle = const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
      color: Colors.white
  );

  static const subHeaderTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  static const unselectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const selectedTabTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: CustomColors.primaryColor,
  );
}

class AvailableFonts {
  static const primaryFont = "Quicksand";
}

class AvailableImages {
  static const Aditya = 'assets/images/Aditya.jpg';
  static const clashroyale = 'assets/images/clashroyale.jpg';
  static const lines = 'assets/images/lines.png';
  static const fortnite = 'assets/images/fortnite.jpg';
  static const pubg = 'assets/images/pubg.jpg';
  static const codm = 'assets/images/codm.jpg';
  static const cover = 'assets/images/cover.jpg';
  static const maxresdefault = 'assets/images/maxresdefault.jpg';
  static const pokemon = 'assets/images/pokemon.jpg';
  static const facebook = 'assets/images/facebook.jpg';
  static const marvel = 'assets/images/marvel.jpg';
  static const amazon = 'assets/images/amazon.jpg';
  static const settings = 'assets/images/settings.png';
  static const billing = 'assets/images/billing.png';
  static const giftcard = 'assets/images/giftcard.png';

}
