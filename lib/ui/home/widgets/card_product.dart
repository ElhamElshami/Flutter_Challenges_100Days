import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  String image;
  String title;
  double price;

  CardProduct(
      {Key? key, required this.image, required this.price, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(
              'https://picsum.photos/250?image=9',
              width: 200,
              height: 200,
            ),
            Column(
              children: const [
                 Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Text(
              '\$100',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
