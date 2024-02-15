import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Heading
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            16.heightBox,
            Text(TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            64.heightBox,

            //! Textfield.
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            16.heightBox,

            //! Submit button.
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const ResetPasswordScreen()),
                  child: const Text(TTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
