import 'package:challenge/widgets/author_card.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(width:350,height:450),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/bac2.jpg'),fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: const AuthorCard(authorName: 'Mike Katz',title: 'Smoothie Connoisseur',imageProvider:NetworkImage('https://freerangestock.com/sample/116135/handsome-man-avatar-.jpg'))
    );
  }
}