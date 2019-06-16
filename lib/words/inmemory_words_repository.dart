import 'dart:async';

import 'package:tibetan_scripts_demo/words/word.dart';
import 'package:tibetan_scripts_demo/words/words_repository.dart';

class InMemoryWordsRepository implements WordsRepository {
  @override
  Future<List<Word>> loadWords() {
    List<Word> words = new List.unmodifiable([
      new Word("""མཁས་པ་ཡོན་ཏན་མཛོད་འཛིན་པ།།
དེ་དག་ལེགས་བཤད་རིན་ཆེན་སྡུད།།
རྒྱ་མཚོ་ཆེན་པོ་ཆུ་བོའི་གཏེར།།
ཡིན་ཕྱིར་ཆུ་བོ་ཐམས་ཅད་འབབ།།""",
          """Scholars are holders of the treasury of knowledge,
They gather the jewels of eloquence.m
Since the great ocean is the treasury of rivers,
All rivers flow into it."""),
      new Word("""ལེགས་བཤད་མཁས་པའི་བློ་གྲོས་ཀྱིས༎
གོ་ཡི་བླུན་པོས་དེ་ལྟ་མིན༎
ཉི་མའི་འོད་ཟེར་ཤ་བ་ན༎
འབྱུང་པོའི་བྱ་རྣམས་ལོང་བར་འགྱུར༎""",
          """Scholars know eloquence through their intelligence,   
But not so the foolish.
When the sun shines
The owls are blinded."""),
      new Word("""ཤེས་རབ་ལྡན་པས་ཉེས་པ་དག།
སེལ་བར་ནུས་ཀྱི་བླུན་པོས་མིན།།
ནམ་མཁའ་ལྡིང་གིས་དུག་ཅན་སྦྲུལ།།
བསད་པར་ནུས་ཀྱི་ཁྭ་ཏས་མིན།།""", """The intelligent can clear away faults,   
But not so the foolish.
The garuda can kill a poisonous snake,
But not so the crow.""")
    ]);
    return Future.value(words);
  }
}
