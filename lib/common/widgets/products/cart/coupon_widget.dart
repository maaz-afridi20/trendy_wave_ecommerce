import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode();
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          //apply button...
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? TColors.white.withOpacity(0.5)
                          : TColors.dark.withOpacity(0.5),
                      backgroundColor: TColors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: const Text('Apply')))
        ],
      ),
    );
  }
}
