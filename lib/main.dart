import 'package:challenge/data/data.dart';
import 'package:challenge/ui/viwes/favorite.dart';
import 'package:challenge/ui/viwes/home.dart';
import 'package:flutter/material.dart';

import 'models/Product_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  toggleProduct(Product product) {
    var data = FakeData.dataBase.getData();
    int index = data.indexOf(product);
    data[index].isFavorite = !data[index].isFavorite;
    setState(() {
      
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Ecommerce App'),
              elevation: 0.0,
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                ),
              ]),
            ),
            body: const TabBarView(children: [
              Home(function: toggleProduct,),
              FavoriteWidget(),
            ]),
          ),
        ));
  }
}
