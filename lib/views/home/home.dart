import 'package:flutter/material.dart';
import 'widgets/tab_section.dart';
import 'widgets/tile_section.dart';
import '../../widgets/media_section.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/header.dart';
import '../../utils/utils.dart';

class HomePage extends StatelessWidget {
  final List<String> _photos = [
    "",
    AvailableImages.clashroyale,
    AvailableImages.fortnite,
    AvailableImages.pubg,
    AvailableImages.codm,
    AvailableImages.cover,
    AvailableImages.pokemon,
  ];

  final List<String> _videos = [
    AvailableImages.maxresdefault,
    AvailableImages.facebook,
    AvailableImages.marvel,
    AvailableImages.amazon,

  ];

  @override
  Widget build(BuildContext context) {
    final _headerText = Header(isHome: true);


    final _tileSection = TileSection();

    final _tabSection = TabSection();

    final _photosSection = MediaSection(title: "My Apps", media: _photos,);

    final _videosSection =
    MediaSection(title: "NEW RELEASE", media: _videos, isPhoto: false);

    return Scaffold(
      appBar: CustomAppBar(isHome: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _headerText,
                _tileSection,
                _tabSection,
                _photosSection,
                _videosSection
              ],
            ),
          ),
        ),
      ),
    );
  }
}
