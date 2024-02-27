import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImage2)),
                16.widthBox,
                Text('John Smith',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        16.heightBox,
        //
        //! User Review...

        Row(
          children: [
            const TRatingbarIndicator(rating: 4.2),
            16.widthBox,
            Text('01 Nov 1990', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        16.heightBox,

        //
        //! Description...

        const TReadmoreWidget(
          text:
              "This app is very good and simple to use i will recommend that you use the following application instead of the default application you are using the default application.",
          trimLines: 1,
        ),
        16.heightBox,

        //
        //! Company review..

        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('01 Nov 2020',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                16.heightBox,
                const TReadmoreWidget(
                    text:
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,or, harum nesciunt ipsum debitis quas aliquid",
                    trimLines: 1),
              ],
            ),
          ),
        ),
        32.heightBox,
      ],
    );
  }
}
