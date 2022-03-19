import 'package:challenge/data/dummy_data.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  String image;
  String title;
  double price;
  bool isFavorite;

  CardProduct(
      {Key? key,
      required this.image,
      required this.price,
      required this.title,
      required this.isFavorite})
      : super(key: key);

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    IconData favoriteState =
        widget.isFavorite ? Icons.favorite : Icons.favorite_border;
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
              children: [
                const Text(
                  'Product Title',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '\$100',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isFavorite = !widget.isFavorite;
                      });
                      MockData.mockData.setFavorite( this);
                    },
                    icon: Icon(favoriteState)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
