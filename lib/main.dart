import 'package:flutter/material.dart';

import 'homr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home (),
      debugShowCheckedModeBanner: false,
    );
  }
}
