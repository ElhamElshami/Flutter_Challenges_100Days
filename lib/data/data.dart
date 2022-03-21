import 'package:challenge/models/Product_models.dart';

class FakeData {
  FakeData._();
  static FakeData dataBase = FakeData._();
  List<Product> getData() {
    return <Product>[
      Product(
          title: 'Watch',
          price: 10.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
      Product(
          title: 'Shoes',
          price: 20.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
      Product(
          title: 'Shirt',
          price: 30.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
      Product(
          title: 'Pants',
          price: 40.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
      Product(
          title: 'Shoes',
          price: 20.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
      Product(
          title: 'Shoes',
          price: 20.0,
          image:
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
          isFavorite: false),
    ];
  }
}
