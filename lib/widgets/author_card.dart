import 'package:challenge/widgets/circle_image.dart';
import 'package:flutter/material.dart';

import '../theme/fooderlichTheme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({Key? key, required this.authorName, required this.title, required this.imageProvider}) : super(key: key);
  final String authorName;
 final String title;
 final ImageProvider imageProvider;
  bool _isFavorited = false;

  @override
  //store state  mutable data 
// that can change over the lifetime of the widget.
  State<AuthorCard> createState() => _AuthorCardState(
      );
}
class _AuthorCardState extends State<AuthorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:  [
           Row(
             children: [
               CircleImage(imageProvider:widget.imageProvider, imageRadius: 
28),
const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'Mike Katez',
                 style: FooderlichTheme.lightTextTheme.headline2,
               ),
                Text(
             'Smoothie Connoisser',
              style: FooderlichTheme.lightTextTheme.headline3,
           ),
             ],
           ),
             ],
           ),
            IconButton(onPressed: (){
              //for what??snackbar is useful to briefly display information to users when an 
              // action has taken place
              const snackBar = SnackBar(content: Text('Press Favorite'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, icon: const Icon(Icons.favorite_border),iconSize: 30,
 color: Colors.grey[400],)
        ],
      ),
    );
  }
}