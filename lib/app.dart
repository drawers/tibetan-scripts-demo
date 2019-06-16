import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/common/localization.dart';
import 'package:tibetan_scripts_demo/common/theme.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/fonts/font_repository.dart';
import 'package:tibetan_scripts_demo/fonts/font_tabs.dart' as tabs;
import 'package:tibetan_scripts_demo/words/word.dart';
import 'package:tibetan_scripts_demo/words/words_repository.dart';

class MyApp extends StatefulWidget {
  final WordsRepository _wordsRepository;
  final FontRepository _fontsRepository;

  MyApp(this._wordsRepository, this._fontsRepository);

  @override
  State createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  AppState appState = AppState(isLoading: true);

  @override
  void initState() {
    super.initState();

    widget._fontsRepository
        .fonts()
        .asStream()
        .asyncMap((fonts) => widget._wordsRepository
            .loadWords()
            .then((words) => new Data(fonts, words)))
        .listen((data) => setState(() {
              appState = AppState(
                  isLoading: false,
                  fonts: data.fonts,
                  currentFont: data.fonts.first,
                  words: data.words);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: TibetanLocalizations().appTitle,
        theme: TibetanTheme.theme,
        localizationsDelegates: [TibetanLocalizationsDelegate()],
        home: tabs.FontTabs(
            title: TibetanLocalizations().appTitle,
            fonts: appState.fonts,
            currentFont: appState.currentFont,
            words: appState.words,
            updateCurrentFont: updateCurrentFont));
  }

  void updateCurrentFont(Font font) {
    setState(() {
      appState.currentFont = font;
    });
  }
}

class AppState {
  bool isLoading;
  List<Font> fonts;
  List<Word> words;
  Font currentFont;

  AppState(
      {@required this.isLoading, this.fonts, this.words, this.currentFont});
}

class Data {
  final List<Font> fonts;
  final List<Word> words;

  Data(this.fonts, this.words);
}
