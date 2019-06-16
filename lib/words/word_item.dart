import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tibetan_scripts_demo/common/keys.dart';
import 'package:tibetan_scripts_demo/fonts/font.dart';
import 'package:tibetan_scripts_demo/words/word.dart';

class WordItem extends StatelessWidget {
  final Word word;
  final Font font;

  WordItem({Key key, @required this.word, @required this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
        child: Card(
            elevation: 4.0,
            key: TibetanKeys.wordItemText(word.translation),
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Row(children: <Widget>[
                Flexible(
                    fit: FlexFit.tight,
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: AutoSizeText(word.tibetan,
                            maxLines: 4,
                            style: TextStyle(
                                fontFamily: font.family, fontSize: 35.0)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).accentColor,
                                width: 1.0,
                                style: BorderStyle.solid)),
                      ),
                      Container(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            word.translation,
                          ))
                    ]))
              ]),
            )));
  }
}
