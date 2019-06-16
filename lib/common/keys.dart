import 'package:flutter/widgets.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';

class TibetanKeys {
  static final tabsController = const Key('__tabsController__');
  static final wordsLoadingIndicator = const Key('__wordsLoadingIndicator__');
  static final wordsList = (Font font) => Key('wordsListForFont__$font.family');
  static final wordsListView = const Key('__wordsListView__');
  static final wordItem = (String id) => Key('wordItem__$id');
  static final wordItemText = (String id) => Key('wordItemText__$id');
  static final fontGrid = const Key('__fontGrid__');
  static final fontItem = (String id) => Key('fontItem__$id');
}
