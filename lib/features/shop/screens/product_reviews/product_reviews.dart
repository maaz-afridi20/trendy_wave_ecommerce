import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar.
      appBar: const TAppbar(
        title: Text('Review & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'ratings and reviews are varified from the peoples who use the same type of device'),
              16.heightBox,

              //! overall product ratings.
              const TOverAllProductRating(),
              const TRatingbarIndicator(rating: 3.5),
              4.heightBox,
              Text('579', style: Theme.of(context).textTheme.bodySmall),
              32.heightBox,

              //! user reviews list.
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
