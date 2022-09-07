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
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Text('Back To HomeScreen')),
      ),
    );
  }
}
