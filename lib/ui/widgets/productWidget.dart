import 'package:challenge/models/Product_models.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  Function function;
  ProductWidget({required this.product,required this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10.0,
                spreadRadius: 1.0,
                offset: Offset(
                  0.0,
                  0.0,
                ),
              ),
            ],
          ),
      child: ListTile(
                  leading: Image.network(
                    product.image,
                    width: 100,
                    height: 100,
                  ),
                  title: Text(product.title),
                  subtitle:
                      Text((product.price).toString()),
                  trailing: IconButton(
                    icon:  Icon(
                      Icons.favorite,
                      color:product.isFavorite? Colors.red:Colors.white,
                    ),
                    onPressed: () {
                      function(product);
                    },
                  ),
                ),
    );
               
  }
}