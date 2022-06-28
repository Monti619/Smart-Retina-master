/*import 'package:http/http.dart' as http;
import 'package:smart/models/category_model.dart';
import 'package:smart/models/product_models.dart';
import 'package:smart/utils/my_string.dart';

class CategoryServices {
  static Future<List<String>> getCategory() async {
    var response = await http.get(Uri.parse('$baseUrl2/categories.json'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return categoryModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}

class AllCategorySercvises {
  static Future<List<ProductModels>> getAllCatehory(
      String categoryNames) async {
    var response =
        await http.get(Uri.parse('$baseUrl2/category/$categoryNames.json'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
*/