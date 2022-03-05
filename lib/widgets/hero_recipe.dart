import 'package:flutter/material.dart';

class HeroRecipe extends StatelessWidget {
  const HeroRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text(
           'RANDOM RCIPE',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        Container(
          width:double.infinity,
          height:250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), 
              BlendMode.dstATop),
              image: const NetworkImage('https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg'))
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    child: const Text('Pork'
                    ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
                ],
              ),
              Container(
               child:  const Text(
                  'Crips Salad with Chicken',
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
