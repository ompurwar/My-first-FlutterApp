import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsStates createState() {
    return new RandomWordsStates();
  }
}

class RandomWordsStates extends State<RandomWords> {
  //todo implelment build method
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final _biggerFont = new TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) {
            return new Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  // building a single list element
  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return new ListTile(
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
            print("removed\t: " + pair.asPascalCase);
          } else {
            _saved.add(pair);
            print("added\t: " + pair.asPascalCase);
          }
        });
      },
      title: new Text(pair.asPascalCase, style: _biggerFont),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
    );
  }

  // buid function for this classs
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.list,
                size: 30.0,
              ),
              onPressed: _pushSaved),
        ],
        title: new Text("Random name Generator",)
           
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        final Iterable<ListTile> tiles = _saved.map(
          (WordPair pair) {
            return new ListTile(
              title: new Text(pair.asPascalCase, style: _biggerFont),
              trailing: new IconButton(
                icon: new Icon(
                  Icons.delete,
                  color: _saved.contains(pair) ? Colors.blue : null,
                ),
                onPressed: () {
                  setState(() {
                    _saved.remove(pair);
                    print("removed\t: " + pair.asPascalCase);
                  });
                },
              ),
            );
          },
        );
        final List<Widget> divided = ListTile.divideTiles(
          context: context,
          tiles: tiles,
        ).toList();
        return new Scaffold(
            appBar: new AppBar(title: const Text("Selected Names")),
            body: new ListView(
              children: divided,
            ));
      },
    ));
  }
}
