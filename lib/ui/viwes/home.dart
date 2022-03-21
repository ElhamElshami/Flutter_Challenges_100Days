import 'package:challenge/ui/widgets/listProduct.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Function function;

   Home({Key? key,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListProduct(function: function),
    );
  }
}