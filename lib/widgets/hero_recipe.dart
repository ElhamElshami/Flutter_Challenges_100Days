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
            image:  const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg'))
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:Colors.black.withOpacity(0.25),
                ),
              ),
              SizedBox(
                height: 35.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment:Alignment.center,
                      width:80,
                      height:45,
                      decoration:    const BoxDecoration(
                        color:Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15.0)
                        ),
                      ),
                      child: const Text('Pork',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,color: Colors.white)),
                      ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite),iconSize: 25, color: Colors.white,),
                  ],
                ),
              ),
              Positioned(
                // bottom: -10.0,
                // width:double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration:  BoxDecoration(
                   color: Colors.white,
                   borderRadius:  BorderRadius.circular(15.0),
                   ),
                 child:  const Text(
                    'Crips Salad with Chicken',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
