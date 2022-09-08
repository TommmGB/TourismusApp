
import 'package:flutter/material.dart';
import 'attractionskb.dart';
import 'attractionsgb.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'Homepage',
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => const AttractionsKB(),
          '/b': (BuildContext context) => const AttractionsGB(),
          'Homepage': (BuildContext context) => const Homepage(),
        },
        home: const Homepage());
  }
}
