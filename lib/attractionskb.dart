import 'package:flutter/material.dart';
import 'main.dart';

//Second Route: AttractionsKleinBasel
class AttractionsKB extends StatelessWidget {
  AttractionsKB({@required this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
    );
  }
}
