import 'package:projet_6/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    return await Api().get(url: 'https://fakestoreapi.com/products/categories');
  }
}
