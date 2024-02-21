import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppbar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}),
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
                          title: 'Featured Brands', onPressed: () {}),
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
                bottom: const TTabbar(
                  tabs: [
                    Tab(child: Text('Sport')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
