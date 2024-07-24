import 'package:projet_6/helper/api.dart';
import 'package:projet_6/models/produc_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required int id,
      required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
