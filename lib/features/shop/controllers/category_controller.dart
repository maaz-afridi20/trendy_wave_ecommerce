import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

// load the category data

  Future<void> fetchCategories() async {
    try {
      //! show some loader.
      isLoading.value = true;

      //! fetch the categories
      final categories = await _categoryRepository.getAllCategories();

      //! update the category list
      allCategories.assignAll(categories);

      //! filter featured list.
      featuredCategories.assignAll(allCategories
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .take(8)
          .toList()); // now this will give you all the categories which has empty parent id and is featured and will only take 8 values.
    } catch (e) {
      TLoaders.errorSnackbar(title: 'OOpss..', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

// load the selected category data

// get category or sub category data.
}
