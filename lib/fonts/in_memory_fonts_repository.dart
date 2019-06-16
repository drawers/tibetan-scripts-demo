import 'dart:async';

import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/fonts/font_repository.dart';

class InMemoryFontRepository implements FontRepository {
  @override
  Future<List<Font>> fonts() {
    List<Font> fonts = List.unmodifiable([
      new Font("Art", "Art"),
      new Font("Betsu", "Betsu"),
      new Font("Chuyig", "Chuyig"),
      new Font("Drutsa", "Drutsa"),
      new Font("Dunhuang", "Dunhuang"),
      new Font("Edict", "Edict"),
      new Font("Horyig", "Horyig"),
      new Font("Tsumachu", "Tsumachu"),
      new Font("Tsuring", "Tsuring"),
      new Font("Tsutong", "Tsutong"),
      new Font("UchenSarchen", "UchenSarchen"),
      new Font("UchenSuring", "UchenSuring"),
      new Font("UchenSutung", "UchenSutung"),
      new Font("Woodblock", "Woodblock")
    ]);
    return Future.value(fonts);
  }
}
