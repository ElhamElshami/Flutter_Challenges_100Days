import 'package:challenge/widgets/hero_recipe.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       PreferredSize(
         preferredSize: const Size.fromHeight(55.0),
         child: AppBar(title: const Text('Recipes'), 
         elevation: 0.0,
      centerTitle: true,
      actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
      ]),
       ),
      body:Container(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: const [
          HeroRecipe(),
        ],
      ),
      )
    );
  }
}
