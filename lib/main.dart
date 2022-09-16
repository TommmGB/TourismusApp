import 'package:flutter/material.dart';
import 'package:tourismusapp/fondationbeyeler.dart';
import 'package:tourismusapp/naturhismuseum.dart';
import 'package:tourismusapp/publictransport.dart';
import 'tinguelymuseum.dart';
import 'baslermuenster.dart';
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
          '/d': (BuildContext context) => const TinguelyMuseum(),
          '/e': (BuildContext context) => const FondationBeyeler(),
          '/f': (BuildContext context) => const NaturHisMuseum(),
          '/g': (BuildContext context) => const PublicTransport(),
        },
        home: const Homepage());
  }
}
