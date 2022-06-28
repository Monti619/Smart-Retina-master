/*import 'package:get/get.dart';
import 'package:smart/models/product_models.dart';
import 'package:smart/services/category_services.dart';

class CategoryController extends GetxController {
  var categoryNameList = <String>[].obs;
  var categoryList = <ProductModels>[].obs;

  var isCatgeoryLoading = false.obs;
  var isAllCategory = false.obs;

  List<String> imageCategory = [
    "https://i.pinimg.com/564x/1c/0d/9d/1c0d9d4a660c6ef3c02e1e83c335eff5.jpg",
    "https://i.pinimg.com/564x/49/43/dd/4943dd18585fa9c1082da0790de03a06.jpg",
    "https://i.pinimg.com/564x/37/88/36/3788365bdfd04ab3eea799a550ee37c6.jpg",
    "https://i.pinimg.com/564x/2b/c6/68/2bc66895b8935a0efa98a230fdd518f6.jpg",
  ].obs;

  @override
  void onInit() {
    super.onInit();
    getCategorys();
  }

  void getCategorys() async {
    var categoryName = await CategoryServices.getCategory();

    try {
      isCatgeoryLoading(true);
      if (categoryName.isNotEmpty) {
        categoryNameList.addAll(categoryName);
      }
    } finally {
      isCatgeoryLoading(false);
    }
  }

  getAllCategorys(String namecategory) async {
    isAllCategory(true);
    categoryList.value =
        await AllCategorySercvises.getAllCatehory(namecategory);

    isAllCategory(false);
  }

  getCategoryIndex(int index) async {
    var categoryAllName = await getAllCategorys(categoryNameList[index]);

    if (categoryAllName != null) {
      categoryList.value = categoryAllName;
    }
  }
}
*/