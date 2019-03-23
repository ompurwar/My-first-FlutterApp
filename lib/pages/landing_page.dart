import 'package:flutter/material.dart';
import '../pages/random_words.dart';

class LandingPage extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
          onTap: () => print('hello :\t' + (counter++).toString()),
          child: Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Name For",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold)),
                new Text("Apna",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold)),
                new Text("StartUp",
                    style: new TextStyle(
                        color: Colors.yellow,
                        fontStyle: FontStyle.italic,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold)),
                new RandomWords()
              ],
            ),
          )),
    );
  }
}
