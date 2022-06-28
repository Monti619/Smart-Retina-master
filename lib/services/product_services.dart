/*import 'package:http/http.dart' as http;
import 'package:smart/models/product_models.dart';
import 'package:smart/utils/my_string.dart';

class ProductServices {
  static Future<List<ProductModels>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl2/persons.json'));

    print("<<<<<<<<<<<<<<<>>>>>>>>>>>>");
    print(response.body);

    var jsonData;
    try {
      jsonData = response.body;
    } catch (e) {
      print("Exception >>> $e");
    }

    return productModelsFromJson(jsonData);
/*
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }*/
  }
}
*/