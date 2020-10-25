import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/tab_bar_Screens/simple_tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SimpleTabBar(),
    );
  }
}