class Word {
  final String tibetan;
  final String translation;

  Word(this.tibetan, this.translation);

  @override
  String toString() {
    return 'Word{tibetan: $tibetan, translation: $translation}';
  }
}
