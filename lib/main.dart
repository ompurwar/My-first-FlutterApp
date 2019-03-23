import 'package:flutter/material.dart';
import './pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My first flutter app",
        home: new LandingPage());
  }
}
