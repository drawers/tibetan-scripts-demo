import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/app.dart';
import 'package:tibetan_scripts_demo/fonts/in_memory_fonts_repository.dart';
import 'package:tibetan_scripts_demo/words/inmemory_words_repository.dart';

void main() => runApp(
    new MyApp(new InMemoryWordsRepository(), new InMemoryFontRepository()));
