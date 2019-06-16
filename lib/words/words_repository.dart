import 'dart:async';

import 'package:tibetan_scripts_demo/words/word.dart';

abstract class WordsRepository {
  Future<List<Word>> loadWords();
}
