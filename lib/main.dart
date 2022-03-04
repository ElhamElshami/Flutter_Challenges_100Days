import 'package:challenge/home.dart';
import 'package:flutter/material.dart';
import 'theme/fooderlichTheme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: const Home(),
    );
  }
}
