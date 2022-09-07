import 'package:flutter/material.dart';
import 'attractionskb.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
      //list of routes -> / results in deep link
      '/a': (BuildContext context) => const AttractionsKB(),
    }, home: const Homepage());
  }
}
