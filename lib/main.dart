import 'package:flutter/material.dart';
// import './pages/landing_page.dart';
import './pages/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(primaryColor: Colors.white),
        debugShowCheckedModeBanner: false,
        title: "My first flutter app",
        home: new RandomWords());
  }
}
