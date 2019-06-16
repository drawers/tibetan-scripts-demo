import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/common/localization.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/fonts/font_grid.dart';
import 'package:tibetan_scripts_demo/words/word.dart';
import 'package:tibetan_scripts_demo/words/words_list.dart';

class FontTabs extends StatelessWidget {
  final String title;
  final List<Word> words;
  final List<Font> fonts;
  final Font currentFont;
  final CurrentFontUpdater updateCurrentFont;

  FontTabs(
      {@required this.title,
      @required this.words,
      @required this.fonts,
      @required this.currentFont,
      @required this.updateCurrentFont});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext buildContext, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        buildContext),
                    child: SliverAppBar(
                        flexibleSpace: FlexibleSpaceBar(
                          background:
                              Image.asset("assets/images/tibet_flower.jpg"),
                        ),
                        title: Text(title),
                        expandedHeight: 300.0,
                        forceElevated: innerBoxIsScrolled,
                        bottom: TabBar(tabs: [
                          Tab(
                              text: TibetanLocalizations.of(context)
                                  .wordsTabTitle),
                          Tab(
                              text: TibetanLocalizations.of(context)
                                  .fontsTabTitle)
                        ])))
              ];
            },
            body: TabBarView(children: <Widget>[
              new WordsList(words, currentFont, false),
              new FontGrid.create(fonts, currentFont, updateCurrentFont)
            ])));
  }
}
