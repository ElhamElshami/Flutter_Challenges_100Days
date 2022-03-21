import 'package:challenge/data/data.dart';
import 'package:challenge/models/Product_models.dart';
import 'package:challenge/ui/widgets/productWidget.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  Function function;
  ListProduct({Key? key , required this.function}) : super(key: key);

  List<Product> data = FakeData.dataBase.getData();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) =>
            ProductWidget(product: data[index], function: 
      ),
    );
  }
}


