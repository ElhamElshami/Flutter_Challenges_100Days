import 'package:challenge/data/dummy_data.dart';
import 'package:challenge/ui/home/widgets/card_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Product App'),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.black.withOpacity(.5),
            bottom:const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          body:TabBarView(children: [
             Container(
            padding:const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: MockData.mockData.getData().map((product) {
                        return Container(
                          padding:const EdgeInsets.symmetric(
                            horizontal: 5
                          ),
                          child: Image.network(
                            product.image,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children:MockData.mockData.getData().map((product) {
                        return CardProduct(
                          image: product.image,
                          title: product.title,
                          price: product.price,
                          isFavorite: product.isFavorite,
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
            Container(
              child: const Center(
                child: Text('Search'),
              ),
            ),
            Container(
              child: const Center(
                child: Text('Cart'),
              ),
            ),
            Container(
              child: const Center(
                child: Text('Profile'),
              ),
            ),
          ]),
      ),  
    );  
  }
}
