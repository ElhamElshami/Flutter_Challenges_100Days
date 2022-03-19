import 'package:challenge/models/product_model.dart';

class MockData {
  MockData._();
  List<ProductModel> favoriteList = [];
  static MockData mockData = MockData._();
  List<ProductModel> getData() {
    return <ProductModel>[
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
      ProductModel(
        title: 'Shirt',
        image:
            'https://pixc.com/wp-content/uploads/2015/08/clothing-header-image.jpg',
        price: 10.0,
        isFavorite: false,
      ),
    ];
  }
 String setFavorite(ProductModel product) {
    if (product.isFavorite) {
      favoriteList.add(product);
      return 'Added to favorite';
    } else {
      favoriteList.remove(product);
      return 'Removed from favorite';
    }
  }
}
List<ProductModel> getFavoriteList () {
  return MockData.mockData.favoriteList;
}
