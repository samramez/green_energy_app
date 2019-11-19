import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn to be green',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
      routes: <String,WidgetBuilder> {
        '/wind' : (BuildContext context) => HomePage(),
        '/sun' : (BuildContext context) => HomePage(),
        '/hydro' : (BuildContext context) => HomePage(),
        '/biomass' : (BuildContext context) => HomePage()
      }
    );
  }
}
