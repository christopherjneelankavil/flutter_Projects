import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(WaterUsageApp());

class WaterUsageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
