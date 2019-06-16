class Font {
  final String displayName;
  final String family;

  Font(this.displayName, this.family);

  @override
  String toString() {
    return 'Font{displayName: $displayName, path: $family}';
  }
}

typedef CurrentFontUpdater(Font font);
