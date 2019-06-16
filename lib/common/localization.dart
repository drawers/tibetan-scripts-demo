import 'package:flutter/material.dart';

class TibetanLocalizations {
  static TibetanLocalizations of(BuildContext buildContext) {
    return Localizations.of<TibetanLocalizations>(
        buildContext, TibetanLocalizations);
  }

  String get appTitle => "Tibetan scripts";

  String get wordsTabTitle => "Words";

  String get fontsTabTitle => "Fonts";
}

class TibetanLocalizationsDelegate
    extends LocalizationsDelegate<TibetanLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      locale.languageCode.toLowerCase().contains("en");

  @override
  Future<TibetanLocalizations> load(Locale locale) =>
      Future(() => TibetanLocalizations());

  @override
  bool shouldReload(LocalizationsDelegate<TibetanLocalizations> old) => false;
}
