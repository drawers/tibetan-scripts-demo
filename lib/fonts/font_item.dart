import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/common/keys.dart';
import 'package:tibetan_scripts_demo/common/theme.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';

class FontItem extends StatelessWidget {
  final Font font;
  final bool isSelected;
  final CurrentFontUpdater updateCurrentFont;

  FontItem(this.font, this.isSelected, this.updateCurrentFont)
      : super(key: TibetanKeys.fontItem(font.toString()));

  @override
  Widget build(BuildContext context) {
    Color topBandColor;
    if (isSelected) {
      topBandColor = TibetanTheme.goldDark;
    } else {
      topBandColor = Theme.of(context).backgroundColor;
    }

    Color bottomBandColor;
    if (isSelected) {
      bottomBandColor = TibetanTheme.goldDark;
    } else {
      bottomBandColor = Theme.of(context).primaryColor;
    }

    return Card(
        child: InkWell(
            onTap: () {
              updateCurrentFont(font);
            },
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Expanded(child: Container(height: 10.0, color: topBandColor))
              ]),
              Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Text("བྱམས་བརྩེ་",
                          style: TextStyle(
                              fontFamily: font.family, fontSize: 25.0)))
                ]),
              ),
              Row(children: [
                Expanded(
                    child: Container(
                        color: bottomBandColor,
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Center(
                            child: Text(
                          "${font.displayName}",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ))))
              ]),
            ])));
  }
}
