import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsStates createState() {
    return new RandomWordsStates();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class RandomWordsStates extends State<RandomWords> {
  //todo implelment build method
  @override
  Widget build(BuildContext context) {
    final List<WordPair> wordPair = <WordPair>[];
    final _biggerFont = new TextStyle(fontSize: 18.0);
    return new Text(wordPair.asPascalCase,
        style: new TextStyle(
            color: Colors.purpleAccent,
            fontStyle: FontStyle.normal,
            fontSize: 60.0,
            fontWeight: FontWeight.bold));
  }
}
