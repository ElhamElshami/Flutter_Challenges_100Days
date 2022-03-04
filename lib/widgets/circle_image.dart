import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key,  required this.imageProvider,this.imageRadius=20}) : super(key: key);
  final double imageRadius ;
  final ImageProvider imageProvider;
// NetworkImage('https://freerangestock.com/sample/116135/handsome-man-avatar-.jpg')
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: imageRadius,
         child:  CircleAvatar(backgroundImage: imageProvider ,radius: imageRadius - 5,),
    );
  }
}
