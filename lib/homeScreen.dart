import 'package:challenge/models/image_details.dart';
import 'package:flutter/material.dart';

List<ImageDetails> _images = [
  ImageDetails(details: 'lorem lorem lorem lorem'
   , imagePath: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-red-rose-royalty-free-image-672727875-1546363000.jpg'
   , photographer: 'John Doe'
   , price: '\$100',
    title: 'Red Rose'),
  ImageDetails(details: 'lorem lorem lorem lorem',
      imagePath: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-red-rose-royalty-free-image-672727875-1546363000.jpg',
      photographer: 'John Doe',
      price: '\$100',
      title: 'Red Rose'),
  ImageDetails(details: 'lorem lorem lorem lorem',
      imagePath: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-red-rose-royalty-free-image-672727875-1546363000.jpg',
      photographer: 'John Doe',
      price: '\$100',
      title: 'Red Rose'),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Gallery',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
              )
            )

            ),
          ],
        )));
  }
}
