import 'package:flutter/material.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow:   const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 6,
        ),
      ],
    ),
    child: Row(
      children:  [
        const Text('Beef'),
        Image.network('https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
      ],
    ),
    );
  }
}