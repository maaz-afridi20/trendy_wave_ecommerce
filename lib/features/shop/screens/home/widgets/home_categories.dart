import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(() {
      if (categoryController.isLoading.value) return const CategoryShimmer();

      if (categoryController.featuredCategories.isEmpty) {
        return Center(
            child: Text('No Data Found',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: Colors.white)));
      }
      return SizedBox(
        height: 80,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categoryController.featuredCategories.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            final singleCategory = categoryController.featuredCategories[index];
            return TVerticalImageText(
              image: singleCategory.image,
              title: singleCategory.name,
              onMTap: () => Get.to(() => const SubCategoriesScren()),
            );
          },
        ),
      );
    });
  }
}
