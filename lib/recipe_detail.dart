import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  //This creates a new StatefulWidget which has an initializer that takes the Recipe
// details to display
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text('${ingredient.quantity}'
                      '${ingredient.measure}'
                      '${ingredient.name}');
                },
                itemCount: widget.recipe.ingredients.length,
              ),
            ),
            Slider(
                value: _sliderValue.toDouble(),
                min: 1,
                max: 10,
                divisions: 10,
                label: '${_sliderValue * widget.recipe.servings} servings',
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                onChanged: (newValue) {
                  setState(() {
                    _sliderValue = newValue.round();
                  });
                })
          ],
        ),
      ),
    );
  }
}
