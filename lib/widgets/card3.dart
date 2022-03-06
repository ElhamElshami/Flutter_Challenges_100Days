import 'package:challenge/theme/fooderlichTheme.dart';
import 'package:flutter/material.dart';


class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:   const BoxConstraints.expand(
        width: 350,
        height: 450
      ),
      decoration: const BoxDecoration(
        image:  DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/top-view-carrots-basket-wooden-background-with-copy-space_141793-8209.jpg'),
        fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
       ),
       child:Stack(
         children:  [
           //1-add dark overlay
           Container(
             decoration: BoxDecoration(
               color:Colors.black.withOpacity(0.6),
               borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
           ),
           //2-Add container column icon text
           Container(
             padding: const EdgeInsets.all(16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:  [
               const Icon(Icons.book,size: 40,color: Colors.white,),
               const SizedBox(
                 height: 8.0,
               ),
               Text(
              'Recipe Trends',
              style: FooderlichTheme.darkTextTheme.headline2),
              const SizedBox(
                 height: 30.0,
               ),
             ]),
           )
           //3-add center widget & chip widget
         ],
       ) ,
    );
  }
}