import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class SubCategoriesScren extends StatelessWidget {
  const SubCategoriesScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(title: Text('Sport'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                  width: double.infinity,
                  imageUrl: TImages.promoBanner3,
                  applyImageRadius: true),
              32.heightBox,
              Column(
                children: [
                  TSectionHeading(title: 'Sport Shirt', onPressed: () {}),
                  8.heightBox,
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const TProductCardHorizontal()),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
