import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/common/keys.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/words/word.dart';
import 'package:tibetan_scripts_demo/words/word_item.dart';

class WordsList extends StatelessWidget {
  final List<Word> words;
  final Font currentFont;
  final bool isLoading;

  WordsList(this.words, this.currentFont, this.isLoading);

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
                key: PageStorageKey<String>("ss"),
                slivers: <Widget>[
                  SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context)),
                  SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          final Word word = words[index];

                          return WordItem(
                              key: TibetanKeys.wordItem(word.translation),
                              word: word,
                              font: currentFont);
                        }, childCount: words.length),
                      ))
                ],
              );
            },
          ),
        ));
  }
}
