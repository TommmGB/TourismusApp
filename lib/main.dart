import 'package:flutter/material.dart';
import 'package:tourismusapp/BaslerMuenster.dart';
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
          'Homepage': (BuildContext context) => const Homepage(),
          '/a': (BuildContext context) => const AttractionsKB(),
          '/b': (BuildContext context) => const AttractionsGB(),
          '/c': (BuildContext context) => const BaslerMuenster(),
        },
        home: const Homepage());
  }
}
