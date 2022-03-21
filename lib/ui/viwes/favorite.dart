import 'package:challenge/data/data.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        itemCount: FakeData.dataBase.getData().length,
        itemBuilder:
            (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Image.network(
                  FakeData.dataBase.getData()[index].image,
                  width: 100,
                  height: 100,
                ),
                title: Text(FakeData.dataBase.getData()[index].title),
                subtitle: Text((FakeData.dataBase.getData()[index].price).toString()),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}