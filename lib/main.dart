import 'package:challenge/homeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(GalleryApp());
}

class GalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
