import 'package:flutter/material.dart';
import 'package:flutter_ui_training/src/pages/basic_page.dart';
import 'package:flutter_ui_training/src/pages/scroll_page.dart';
import 'package:flutter_ui_training/src/pages/tiles_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Training',
      initialRoute: 'tiles',
      routes: { 
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'tiles': (BuildContext context) => TilesPage(),
      },
    );
  }
}
