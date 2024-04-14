import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: TAppbar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: const [
            TCartCounterIcon(),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //! Search bar..

                      const TSearchContainer(
                        text: 'Search',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      //! Feaured Brand.
                      TSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () =>
                              Get.to(() => const AllBrandsScreen())),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      //! Grid layout..
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                //! Creating the tabs..
                bottom: TTabbar(
                  // tabs: [
                  //   Tab(child: Text('Sport')),
                  //   Tab(child: Text('Furniture')),
                  //   Tab(child: Text('Electronics')),
                  //   Tab(child: Text('Clothes')),
                  //   Tab(child: Text('Cosmetics')),
                  // ],
                  tabs: categories
                      .map((category) => Tab(child: Text(category.name)))
                      .toList(),
                ),
              ),
            ];
          },
          body: TabBarView(
            // children: [
            //   TCategoryTab(),
            //   TCategoryTab(),
            //   TCategoryTab(),
            //   TCategoryTab(),
            //   TCategoryTab(),
            // ],
            children: categories
                .map((category) => TCategoryTab(category: category))
                .toList(),
          ),
        ),
      ),
    );
  }
}
