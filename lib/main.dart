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
    final theme = FooderlichTheme.light();
    return MaterialApp(
      title: 'Fooderlich',
      theme:theme,
      home: Scaffold(
 appBar: AppBar(
 title: Text('Fooderlich',
 // 4
 style: theme.textTheme.headline6),
 ),
 body: Center(
 child: Text('Let\'s get cooking ! ',
 // 5
 style: theme.textTheme.headline1),
 ),
 ),
    );
  }
}
