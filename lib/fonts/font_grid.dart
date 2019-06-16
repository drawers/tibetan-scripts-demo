import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/fonts/font_item.dart';

class FontGrid extends StatelessWidget {
  final List<Font> font;
  final Font currentFont;
  final CurrentFontUpdater updateCurrentFont;

  FontGrid.create(this.font, this.currentFont, this.updateCurrentFont);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Container(
          color: Colors.white,
          child: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                key: PageStorageKey<String>("aa"),
                slivers: <Widget>[
                  SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context)),
                  SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            final Font itemFont = this.font[index];
                            return FontItem(itemFont, itemFont == currentFont,
                                this.updateCurrentFont);
                          }, childCount: this.font.length),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2)))
                ],
              );
            },
          ),
        ));
  }
}
