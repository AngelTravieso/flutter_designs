import 'package:designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:designs/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'scroll_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => ScrollScreen(),
        });
  }
}
