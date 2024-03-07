import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwItems),
        itemBuilder: (_, __) => TRoundedContainer(
          showBorder: true,
          backgroundColor: dark ? TColors.dark : TColors.light,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //! Row 1
              Row(
                children: [
                  //! Icon
                  const Icon(Iconsax.ship),
                  const SizedBox(width: TSizes.spaceBtwItems / 2),
                  //! Status and date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: TColors.primary,
                                fontWeightDelta: 1,
                              ),
                        ),
                        Text('16 Dec 2024',
                            style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),
                  //! Icon buton
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.arrow_right_34,
                          size: TSizes.iconSm))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              //! Row 2nd
              Row(
                children: [
                  //! first row of above 2nd row
                  Expanded(
                    child: Row(
                      children: [
                        //! Icon
                        const Icon(Iconsax.tag),
                        const SizedBox(width: TSizes.spaceBtwItems / 2),
                        //! Status and date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              Text('#jm2f68',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //! second row of above 2nd row
                  Expanded(
                    child: Row(
                      children: [
                        //! Icon
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: TSizes.spaceBtwItems / 2),
                        //! Status and date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              Text('05 Jan 2024',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
