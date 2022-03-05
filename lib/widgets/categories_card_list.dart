import 'package:flutter/material.dart';

class CategorieList extends StatelessWidget {
  const CategorieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount: 8, itemBuilder: (context, index) {
        return  const Card(
      child: ListTile(
        leading: FlutterLogo(size: 72.0),
        title: Text('Three-line ListTile'),
        subtitle: Text(
          'A sufficiently long subtitle warrants three lines.'
        ),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
    ),
        );
      }),
    );
  }
}