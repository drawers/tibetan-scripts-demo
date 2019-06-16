import 'package:tibetan_scripts_demo/fonts/font.dart';

abstract class FontRepository {
  Future<List<Font>> fonts();
}