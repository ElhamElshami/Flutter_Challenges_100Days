import 'package:challenge/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Recipes());
}

class Recipes extends StatelessWidget {
  const Recipes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

